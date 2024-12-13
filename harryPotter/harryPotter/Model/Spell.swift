import Foundation

struct Spell: Identifiable, Codable{
    
    var id = UUID()
    let spell: String
    let use: String
    
    enum CodingKeys: String, CodingKey {
        case spell, use
        
    }
}
