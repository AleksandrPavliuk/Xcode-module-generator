import Foundation
import UIKit

protocol ApplicationCoordinatorProtocol: CoordinatorProtocol {

}

class ApplicationCoordinator: ApplicationCoordinatorProtocol {

    private let window: UIWindow
    private let navigationController: UINavigationController

    private var templateFlowCoordinator: CoordinatorProtocol?

    init(window: UIWindow, navigationController: UINavigationController) {
        self.window = window
        self.navigationController = navigationController
    }
}


// MARK: ApplicationCoordinatorProtocol
extension ApplicationCoordinator {
    func start() {
        templateFlowCoordinator = TemplateFlowCoordinator(window: window, navigationController: navigationController)
        templateFlowCoordinator?.start()
    }
}
