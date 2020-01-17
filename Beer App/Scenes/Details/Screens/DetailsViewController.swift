//
//  DetailsViewController.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol DetailsDisplayLogic: class {
    func showSuccess()
    func showError(msg: String)
}

class DetailsViewController: UIViewController {

    var interactor: DetailsBusinessLogic?
  
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
  
    private func setup() {
        let viewController = self
        let interactor = DetailsInteractor()
        let presenter = DetailsPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
     }
  
    func doSomething() {
       interactor?.doSomething()
     }

}

extension DetailsViewController: DetailsDisplayLogic {
    
    func showSuccess() {

    }

    func showError(msg: String) {

    }
    
}
