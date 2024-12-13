import SwiftUI

struct CharacterView: View {
    
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
                        ForEach(viewModel.characters) { person in
                            CharacterComponent(person: person)
                        }
                    }
                }
                .padding(.bottom , 75)
            }
        }.onAppear{
            viewModel.fetchCharacters()
        }
    }
}

#Preview {
    CharacterView()
}
