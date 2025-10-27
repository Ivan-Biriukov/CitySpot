import Foundation

enum PlaceCategory: String, CaseIterable {
    case food = "Food & Drinks"
    case entertainment = "Entertainment"
    case culture = "Museums & Culture"
    case art = "Art & Galleries"
    case outdoors = "Outdoors & Parks"
    
    var icon: String {
        switch self {
        case .food: return "🍔"
        case .entertainment: return "🎭"
        case .culture: return "🏛️"
        case .art: return "🎨"
        case .outdoors: return "⛰️"
        }
    }
}
