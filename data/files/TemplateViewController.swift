import UIKit

protocol TemplateViewControllerProtocol: class {
    func startProgressAnimation()
    func stopProgressAnimation()
    func reloadData()
    func set(model: TemplateModel)
}

class TemplateViewController: UIViewController, TemplateViewControllerProtocol, SetInjectable {
    
    private var presenter: TemplatePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewFinishedLoading()
    }
}

// MARK: SetInjectable
extension TemplateViewController {
    typealias Dependencies = (TemplatePresenter)
    
    func inject(dependencies: Dependencies) {
        presenter = dependencies
    }
}


// MARK: TemplateViewControllerProtocol
extension TemplateViewController {
    func startProgressAnimation() {
    }
    
    func stopProgressAnimation() {
    }
    
    func reloadData() {
    }
    
    func set(model: TemplateModel) {
        navigationItem.title = model.title
    }
}

