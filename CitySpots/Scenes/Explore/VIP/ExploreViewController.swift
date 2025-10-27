import UIKit

protocol DisplayExploreViewController: AnyObject {
    
}

final class ExploreViewController: UIViewController {
//    private let contentView: UIView =
    private let ineractor: ExploreBusinessLogic
    
    init(ineractor: ExploreBusinessLogic) {
        self.ineractor = ineractor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension ExploreViewController: DisplayExploreViewController {
    
}

