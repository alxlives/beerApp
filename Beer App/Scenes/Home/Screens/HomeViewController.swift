//
//  HomeViewController.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol HomeDisplayLogic: class {
    func showBeerListSuccess(_ list: [Beer])
    func showBeerListError(_ msg: String)
}

class HomeViewController: UIViewController {

    var interactor: HomeBusinessLogic?
    var beerList: [Beer] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
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
        
        self.collectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductCollectionViewCell")

        getBeerList()
     }
  
    func getBeerList() {
       interactor?.getBeerList()
     }

}

extension HomeViewController: HomeDisplayLogic {
    
    func showBeerListSuccess(_ list: [Beer]) {
        self.beerList = list
        
        
        DispatchQueue.main.async {
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
           }
    }
    
    func showBeerListError(_ msg: String) {
        
    }
    
}
