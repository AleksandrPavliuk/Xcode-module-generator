import Foundation
import UIKit

class TemplateFlowCoordinator: CoordinatorProtocol {
    
    private let window: UIWindow
    private let navigationController: UINavigationController?
    
    private var templateViewController: TemplateViewController?
    
    init(window: UIWindow, navigationController: UINavigationController) {
        self.window = window
        self.navigationController = navigationController
    }
}

extension TemplateFlowCoordinator {
    func start() {
        let viewController = TemplateViewController(nibName: "TemplateViewController", bundle: Bundle.main)

        let presenter = TemplatePresenter()
        let presenterDependencies = TemplatePresenter.Dependencies(viewController)
        presenter.inject(dependencies: presenterDependencies)

        viewController.inject(dependencies: presenter)

        templateViewController = viewController

        navigationController?.pushViewController(viewController, animated: true)
    }
}
