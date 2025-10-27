import Foundation

protocol ExploreRoutes {
    static func showMain()
    static func showPlaceDetail(placeId: String)
    static func showSearchResults(query: String)
    static func showCategoryPlaces(category: PlaceCategory)
    static func showLocationPicker()
}
