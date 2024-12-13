import Foundation


struct Characters: Identifiable, Codable{
    var id = UUID() // benzersiz id
    let fullName: String
    let nickname: String
    let hogwartsHouse: String
    let interpretedBy: String
    let image: String
    let birthdate: String
    
    enum CodingKeys: String, CodingKey {
        case fullName, nickname, hogwartsHouse, interpretedBy, image, birthdate
    }
}
