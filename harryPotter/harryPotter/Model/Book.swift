
import Foundation

struct Book: Identifiable, Codable{
    
    var id = UUID() // JSON'dan gelmiyor, Swift tarafından atanıyor
    let title: String
    let releaseDate: String
    let description: String
    let pages: Int
    let cover: String
    
    enum CodingKeys: String, CodingKey {
        case title, releaseDate, description, pages, cover
    }
   
}


// Bu durumun nedeni, Codable protokolünün çalışma prensipleriyle ilgilidir. Açıklayayım:

// Sorunun Kaynağı
// var id = UUID() şeklinde yazıldığında, Codable (ve dolayısıyla Decodable) protokolü, id property'sinin her zaman JSON'dan gelen bir değerle eşleşmesini bekler.
// Ancak JSON'da id alanı bulunmuyor. Bu durumda Swift, Codable'ın kurallarına uygun bir eşleme yapamadığı için hata oluşur: "The data couldn’t be read because it is missing".
// let ile Çözüm
// let id = UUID() yazıldığında, id property'si bir sabit olarak tanımlanır ve otomatik olarak UUID() ile atanır.
// let olduğunda, Swift, bu property'sinin JSON'dan okunmasını beklemez, çünkü sabit değerler Codable protokolü tarafından dışlanır (yani JSON eşleştirmesine dahil edilmez). Böylece JSON'da id olmadığı için hata oluşmaz.
// var Neden Sorunlu?
// var id = UUID() olarak tanımlandığında, Swift bunu değişken olarak kabul eder ve JSON'dan bir değer bekler. JSON'da id olmadığı için decoding başarısız olur.
// Codable protokolü, değişkenlerin JSON'daki karşılıklarının olmasını varsayar.
