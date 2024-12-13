
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .center, spacing: 16){
                VStack(spacing: 5){
                    Text("HOGWARTS")
                        .font(.system(size: 37))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    Text("School of Witchcraft and Wizardry")
                        .foregroundStyle(.white)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .padding(.vertical, 20)
                
                Image("hg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                    .padding(.bottom, 20)
                NavigationLink(destination: MainView()){
                    Text("Enter")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                }
                
                
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("colorRed"))
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.1), radius: 10, x: 0, y: 5)
            )
        }      
    }
}

#Preview {
    WelcomeView()
}
