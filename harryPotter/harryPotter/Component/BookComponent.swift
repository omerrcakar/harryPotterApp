//
//  BookComponent.swift
//  harryPotter
//
//  Created by ÖMER  on 13.12.2024.
//

import SwiftUI

struct BookComponent: View {
    let book: Book
    
    var body: some View {
        VStack(spacing: 20){
            // Resim
            AsyncImage(url: URL(string: book.cover)){ response in
                switch response {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 250,height: 250)
                    
                default:
                    DefaultImageView()
                }
            }
            
            Text(book.title)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
            HStack{
                // Yayınlanma tarihi
                Text("\(book.releaseDate)")
                    .font(.caption)
                    .foregroundColor(.gray)

            }
            
            Text(book.description)
                .font(.subheadline)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    BookComponent(book: Book(title: "Harry Potter and the Sorcerer's Stone", releaseDate: "Jun 26, 1997", description: "On his birthday, Harry Potter discovers that he is the son of two well-known wizards, from whom he has inherited magical powers. He must attend a famous school of magic and sorcery, where he establishes a friendship with two young men who will become his companions on his adventure. During his first year at Hogwarts, he discovers that a malevolent and powerful wizard named Voldemort is in search of a philosopher's stone that prolongs the life of its owner.", pages: 223, cover: "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/covers/1.png"))
}
