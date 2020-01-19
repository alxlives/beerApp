//
//  HomeViewController.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol HomeDisplayLogic: class {
    func showBeerListSuccess(_ list: [Beer])
    func showBeerListError(_ msg: String)
}

class HomeViewController: UIViewController {
    
    var interactor: HomeBusinessLogic?
    var router: HomeRouter?
    
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
        let router = HomeRouter()
        router.viewController = viewController
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        registerCollectionCells()
        getBeerList()
    }
    
    func registerCollectionCells() {
        self.collectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductCollectionViewCell")
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
