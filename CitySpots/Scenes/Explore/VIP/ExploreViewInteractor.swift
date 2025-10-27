import Foundation

protocol ExploreBusinessLogic {
    
}

final class ExploreViewInteractor {
    let presenter: PresentsExploreView
    
    init(presenter: PresentsExploreView) {
        self.presenter = presenter
    }
}

extension ExploreViewInteractor: ExploreBusinessLogic {
    
}
