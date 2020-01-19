//
//  HomeRouter.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol HomeRoutingLogic {
    func routeToDetails(beer: Beer)
}

class HomeRouter: NSObject, HomeRoutingLogic {

    weak var viewController: HomeViewController?

    func routeToDetails(beer: Beer) {
        let detailsViewController = DetailsViewController()
        detailsViewController.interactor?.dataStore = DetailsDataStore(beer: beer)
        viewController?.navigationController?.pushViewController(detailsViewController, animated: true)
    }

}
