import SwiftUI

struct MainView: View {
    @Environment(\.dismiss) var dismiss // dismiss fonksiyonunu çağırıyoruz
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        ZStack{
            switch selectedTab {
            case 0:
                HouseView()
            case 1:
                CharacterView()
            case 2:
                BookView()
            case 3:
                SpellView()
                
            default:
                HouseView()
            }
            
        
            
            VStack{
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
            .padding(.horizontal)
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button{
                    dismiss()
                }label: {
                    Label("Back", systemImage: "arrow.left.circle")
                        
                }
                .tint(.gray)
            }
        }
        
    }
}

#Preview {
    MainView()
}
