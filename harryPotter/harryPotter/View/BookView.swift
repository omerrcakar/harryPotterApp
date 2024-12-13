import SwiftUI

struct BookView: View {
    
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
                        ForEach(viewModel.books) { book in
                            BookComponent(book: book)
                        }
                    }
                }
                .padding(.bottom , 75)
            }
        }.onAppear{
            viewModel.fetchBooks()
        }
    }
}

#Preview {
    BookView()
}
