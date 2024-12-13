import SwiftUI

struct SpellView: View {
    @StateObject var viewModel = HarryPotterViewModel()
    
    var body: some View {
        Group{
            if viewModel.isLoading {
                VStack{
                    ProgressView()
                        .padding()
                    Text("Loading Books...")
                        .padding()
                }
            }else{
                ScrollView {
                    VStack {
                        ForEach(viewModel.spells) { spell in
                            SpellComponent(spell: spell)
                        }
                    }
                }
                .padding(.bottom , 75)
            }
        }.onAppear{
            viewModel.fetchSpells()
        }
    }
}

#Preview {
    SpellView()
}
