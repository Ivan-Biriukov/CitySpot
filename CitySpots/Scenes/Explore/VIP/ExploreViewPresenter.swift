import Foundation

protocol PresentsExploreView {
    
}

final class ExploreViewPresenter {
    weak var viewController: DisplayExploreViewController?
}

extension ExploreViewPresenter: PresentsExploreView {
    
}
