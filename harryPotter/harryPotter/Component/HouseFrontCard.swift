
import SwiftUI

struct HouseFrontCard: View {
    
    let imageName: String
    let colors: [String]
    
    
    var body: some View {
        VStack(spacing: 20){
           
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 170,height: 170)
        }
        .frame(width: 140, height: 250)
        .padding()
        .background(
            LinearGradient(
                colors: colors.compactMap { $0.toColor },
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    HouseFrontCard(imageName: "Lion",colors: ["red","blue"])
}

