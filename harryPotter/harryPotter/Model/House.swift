import Foundation

struct House: Identifiable, Codable{
    var id = UUID() // benzersiz id
    let house: String
    let emoji: String
    let founder: String
    let animal: String
    let colors: [String]
    
    enum CodingKeys: String, CodingKey {
        case house, emoji, founder, animal, colors
    }
}
