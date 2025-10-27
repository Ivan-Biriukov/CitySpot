import UIKit

final class Router {
    private static let navigationController = UINavigationController()
    private init() {}
}

extension Router {
    
    static func startRouting() -> UINavigationController {
        return navigationController
    }
    
    static func performRoute<F>(factory: F, context: F.Context, animated: Bool = true) where F: Factory, F.ViewController: UIViewController {
        let viewController = factory.build(from: context)
        
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    static func performPopUpRoute<F>(factory: F, context: F.Context, animated: Bool = true) where F: Factory, F.ViewController: UIViewController {
        let vc = factory.build(from: context)
        vc.modalPresentationStyle = .popover
        
        navigationController.present(vc, animated: true)
    }
}

extension Router {
    static func tabBarController() {
        let tabBarVMArray = [
            TabBarViewController.ViewModel(
                vc: ExploreViewFactory().build(from: ()),
                title: "Главная",
                image: UIImage(systemName: "house")!,
                selectedImage: UIImage(systemName: "house.fill")!
            ),
            TabBarViewController.ViewModel(
                vc: UIViewController(),
                title: "Платежи",
                image: UIImage(systemName: "wallet.pass")!,
                selectedImage: UIImage(systemName: "wallet.pass.fill")!
            ),
            TabBarViewController.ViewModel(
                vc: UIViewController(),
                title: "Профиль",
                image: UIImage(systemName: "brain.head.profile")!,
                selectedImage: UIImage(systemName: "brain.head.profile.fill")!
            ),
            TabBarViewController.ViewModel(
                vc: UIViewController(),
                title: "Меню",
                image: UIImage(systemName: "menucard")!,
                selectedImage: UIImage(systemName: "menucard.fill")!
            )
        ]
        performRoute(factory: TabBarFactory(), context: tabBarVMArray)
    }
}



//extension Router: MainRoutes {
//    static func mainScreen() {
//        performRoute(factory: MainViewFabric(), context: ())
//    }
//}
//
//extension Router: CanvasRoutes {
//    static func canvasScreen(with contex: CanvasView.ViewModel) {
//        performPopUpRoute(factory: CanvasFabric(), context: contex)
//    }
//}
//
//extension Router: FiltersRoutes {
//    static func filtersScreen(with contex: FiltersView.ViewModel) {
//        performPopUpRoute(factory: FiltersFabric(), context: contex)
//    }
//}
//
//extension Router: TextRoutes {
//    static func textScreen(with context: TextView.ViewModel) {
//        performPopUpRoute(factory: TextFabric(), context: context)
//    }
//}
