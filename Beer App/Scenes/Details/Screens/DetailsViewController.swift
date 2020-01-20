//
//  DetailsViewController.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit
import Hero

protocol DetailsDisplayLogic: class {
    func showSuccess(viewModel: DetailsViewModel)
    func showError(msg: String)
}

class DetailsViewController: UIViewController {

    var interactor: DetailsBusinessLogic? = DetailsInteractor()
  
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTagline: UILabel!
    @IBOutlet weak var lblAbv: UILabel!
    @IBOutlet weak var lblIbu: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
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
        let presenter = DetailsPresenter()
        let currentInteractor = interactor as! DetailsInteractor
        viewController.interactor = interactor
        currentInteractor.presenter = presenter
        presenter.viewController = viewController
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalhes"
        imgView.hero.id = "productAnimation"
        getFieldsData()
     }
  
    func getFieldsData() {
       interactor?.getFieldsData()
     }

}

extension DetailsViewController: DetailsDisplayLogic {
    
    func showSuccess(viewModel: DetailsViewModel) {
        self.lblName.text = viewModel.name
        self.lblTagline.text = viewModel.tagline
        self.lblAbv.text = viewModel.abv
        self.lblIbu.text = viewModel.ibu
        self.lblDescription.text = viewModel.description
        self.imgView.image = UIImage(data: viewModel.imageData ?? Data())
    }

    func showError(msg: String) {

    }
    
}
