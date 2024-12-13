import SwiftUI

struct HouseComponent: View {
    
    @State var isFlip: Bool = true
    
    
    let house: House
    let imageName: String
    
    
    var body: some View {
        ZStack{
            HouseBackCard(house: house)
                .rotation3DEffect(.degrees(isFlip ? 90 : 0), axis: (x: 0, y: 1, z: 0))
                .animation(isFlip ? .linear : .linear.delay(0.35), value: isFlip)
            HouseFrontCard(imageName: imageName, colors: house.colors)
                .rotation3DEffect(.degrees(isFlip ? 0 : -90), axis: (x: 0, y: 1, z: 0))
                .animation(isFlip ? .linear.delay(0.35) : .linear, value: isFlip)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onTapGesture {
            isFlip.toggle()
        }
        

    }
}

#Preview {
    HouseComponent(house: House(house: "Gryffindor", emoji: "🦁", founder: "Godric Gryffindor", animal: "Lion",colors: ["red", "yellow"]),imageName: "gri")
}
