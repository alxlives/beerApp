//
//  HomeViewController.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol HomeDisplayLogic: class {
    func showSuccess()
    func showError(msg: String)
}

class HomeViewController: UIViewController {

    var interactor: HomeBusinessLogic?
  
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
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
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

extension HomeViewController: HomeDisplayLogic {
    
    func showSuccess() {

    }

    func showError(msg: String) {

    }
    
}
