import SwiftUI

struct CharacterComponent: View {
    let person: Characters
    
    var body: some View {
        HStack{
            // Resim
            AsyncImage(url: URL(string: person.image)){ response in
                switch response {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 200,height: 200)
                    
                default:
                    DefaultImageView()
                }
            }
            VStack(alignment: .leading){
                
                Text(person.fullName)
                    .font(.headline)
                    .foregroundColor(.black)
                    
                // Yayınlanma tarihi
                Text("\(person.hogwartsHouse)")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(person.interpretedBy)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
        .frame(width: 330, height: 200)
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    CharacterComponent(person: Characters(fullName: "Harry James Potter", nickname: "Harry", hogwartsHouse: "Gryffindor", interpretedBy: "Daniel Radcliffe", image: "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/characters/harry_potter.png", birthdate: "Jul 31, 1980"))
}
