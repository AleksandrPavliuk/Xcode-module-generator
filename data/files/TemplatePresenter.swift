import Foundation
import UIKit

class TemplatePresenter: NSObject, SetInjectable {
    private weak var view: TemplateViewControllerProtocol!
}

// MARK: SetInjectable
extension TemplatePresenter {
    typealias Dependencies = (TemplateViewControllerProtocol?)
    
    func inject(dependencies: Dependencies) {
        (view) = dependencies
    }
}

// MARK: Interface
extension TemplatePresenter {
    
    func viewFinishedLoading() {
        view.set(model: .init(title: "Template VC"))
    }

}
