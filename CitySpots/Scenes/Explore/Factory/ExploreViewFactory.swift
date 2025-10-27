import Foundation

final class ExploreViewFactory: Factory {
    
    typealias Context = Void
    typealias ViewController = ExploreViewController
    
    func build(from context: Context) -> ViewController {
        
        let presenter = ExploreViewPresenter()
        let interactor = ExploreViewInteractor(presenter: presenter)
        let viewController = ExploreViewController(ineractor: interactor)
        
        presenter.viewController = viewController
        
        return viewController
    }
}
