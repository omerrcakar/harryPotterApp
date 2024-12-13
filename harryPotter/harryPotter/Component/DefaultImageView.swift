import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        VStack{
            ProgressView()
                .padding()
            
            Image(systemName: "books.vertical")
                .font(.largeTitle)
            Text("Grabbing the image")
        }
        .padding(.vertical, 50)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DefaultImageView()
}
