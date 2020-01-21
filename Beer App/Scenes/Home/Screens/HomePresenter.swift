//
//  HomePresenter.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol HomePresentationLogic {
    func presentBeerList(_ list:[Beer])
    func presentError(_ error:String)
}

class HomePresenter: HomePresentationLogic {

	weak var viewController: HomeDisplayLogic?

    func presentBeerList(_ list:[Beer]) {
        let viewModel = HomeViewModel(list: list)
        self.viewController?.showBeerListSuccess(viewModel)
    }
    
    func presentError(_ error:String) {
        self.viewController?.showBeerListError(error)
    }
    
}
