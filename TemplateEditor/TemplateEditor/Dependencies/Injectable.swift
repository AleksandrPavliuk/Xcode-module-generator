import Foundation

protocol Injectable {
    associatedtype Dependencies
}

protocol InitializeInjectable: Injectable {
    init(dependencies: Dependencies)
}

protocol SetInjectable: Injectable {
    func inject(dependencies: Dependencies)
}
