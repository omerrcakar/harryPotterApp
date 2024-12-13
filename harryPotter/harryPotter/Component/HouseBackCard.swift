import SwiftUI

struct HouseBackCard: View {
    let house: House
    
    
    var body: some View {
        VStack(spacing: 20){
           
            Text(house.house)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
            HStack{
                // Yayınlanma tarihi
                Text("\(house.founder)")
                    .font(.caption)
                    .foregroundColor(.gray)

            }
            
            Text(house.emoji)
                .font(.subheadline)
                .foregroundColor(.white)
            Text(house.animal)
                .font(.subheadline)
                .foregroundColor(.black)
        }
        .frame(width: 140, height: 250)
        .padding()
        .background(.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    HouseBackCard(house: House(house: "Gryffindor", emoji: "🦁", founder: "Godric Gryffindor", animal: "Lion", colors: ["red", "blue"]))
}
