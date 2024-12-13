
import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        HStack{
            
            Spacer()
            Button{
                selectedTab = 0
            }label: {
                Image("house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(selectedTab == 0 ? .blue : .gray)
                    .offset(y: selectedTab == 0 ? -8 : 0)
                    .animation(.easeInOut(duration: 0.3),value: selectedTab)
                    .font(.system(size: 24))
            }
            Spacer()
            Button{
                selectedTab = 1
            }label: {
                Image("cha")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(selectedTab == 1 ? .blue : .gray)
                    .offset(y: selectedTab == 1 ? -8 : 0)
                    .animation(.easeInOut(duration: 0.3),value: selectedTab)
                    .font(.system(size: 24))
            }
            Spacer()
            Button{
                selectedTab = 2
            }label: {
                Image("book")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(selectedTab == 2 ? .blue : .gray)
                    .offset(y: selectedTab == 2 ? -8 : 0)
                    .animation(.easeInOut(duration: 0.3),value: selectedTab)
                    .font(.system(size: 24))
            }
            Spacer()
            Button{
                selectedTab = 3
            }label: {
                Image("spell")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(selectedTab == 3 ? .blue : .gray)
                    .offset(y: selectedTab == 3 ? -8 : 0)
                    .animation(.easeInOut(duration: 0.3),value: selectedTab)
                    .font(.system(size: 24))
            }
            Spacer()

        }
        .padding(.horizontal, 25)
        .padding(.vertical, 25)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .foregroundStyle(.white)
                .shadow(color: .gray.opacity(0.3) , radius: 10, x: 0, y: 5)
        )

    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(0))
        .padding()
}
