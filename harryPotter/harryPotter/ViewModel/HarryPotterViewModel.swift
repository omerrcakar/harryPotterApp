
import Foundation
import Alamofire

class HarryPotterViewModel: ObservableObject{
    
    @Published var books: [Book] = []
    @Published var characters: [Characters] = []
    @Published var houses: [House] = []
    @Published var spells: [Spell] = []
    @Published var isLoading: Bool = false
    
    
    private let baseURL = "https://potterapi-fedeperin.vercel.app/en"
    
    func fetchBooks(){
        self.isLoading = true
    
        AF.request("\(baseURL)/books", method: .get)
            .responseDecodable(of: [Book].self) { response in
                switch response.result {
                case.success(let books):
                    DispatchQueue.main.async{
                        self.books = books
                        print(books)
                        self.isLoading = false
                    }
                case.failure(let error):
                    DispatchQueue.main.async{
                        print("Error: \(error.localizedDescription)")
                        self.isLoading = false
                    }
                    
                }
            }
        
    }
    
    
    func fetchCharacters(){
        self.isLoading = true
        
        AF.request("\(baseURL)/characters",method: .get).responseDecodable(of: [Characters].self) { response in
            DispatchQueue.main.async{
                self.isLoading = false
                switch response.result{
                case.success(let charactersFromAPI):
                    self.characters = charactersFromAPI
                case.failure(let error):
                    print("Karakterler alınamadı: \(error.localizedDescription)")
                }
            }
        }
    }
    
    
    func fetchHouses(){
        self.isLoading = true
        
        AF.request("\(baseURL)/houses",method: .get).responseDecodable(of: [House].self) { response in
            DispatchQueue.main.async{
                self.isLoading = false
                switch response.result{
                case.success(let housesFromAPI):
                    self.houses = housesFromAPI
                case.failure(let error):
                    print("Ev bilgileri alınamadı: \(error.localizedDescription)")
                }
            }
        }
    }
    
    func fetchSpells(){
        self.isLoading = true
        
        AF.request("\(baseURL)/spells",method: .get).responseDecodable(of: [Spell].self) { response in
            DispatchQueue.main.async{
                self.isLoading = false
                switch response.result{
                case.success(let spellsFromAPI):
                    self.spells = spellsFromAPI
                case.failure(let error):
                    print("Büyü bilgileri alınamadı: \(error.localizedDescription)")
                }
            }
        }
    }
  
}
