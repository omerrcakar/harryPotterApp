import SwiftUI

struct HouseView: View {
    
    @StateObject var viewModel = HarryPotterViewModel()
    let gridColumns = [GridItem(.flexible()), GridItem(.flexible())] // 2 sütun düzeni
    
    var body: some View {
        Group{
            if viewModel.isLoading {
                VStack{
                    ProgressView()
                        .padding()
                    Text("Loading Houses...")
                        .padding()
                }
            }else{
                LazyVGrid(columns: gridColumns, spacing: 20){
                    ForEach(viewModel.houses) { house in
                        HouseComponent(house: house, imageName: house.animal)
                    }
                }
                .padding(.bottom , 75)
                
            }
        }.onAppear{
            viewModel.fetchHouses()
        }
        
        
    }
}

#Preview {
    HouseView()
}
