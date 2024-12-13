import Foundation
import SwiftUI

extension String {
    var toColor: Color {
        switch self.lowercased() {
        case "red": return .red
        case "gold": return Color("gold") // Altın renk için özel tanım
        case "yellow": return .yellow
        case "black": return .black
        case "green": return .green
        case "blue": return .blue
        case "purple": return .purple
        default: return .gray // Varsayılan renk
        }
    }
}
