//
//  HomePresenter.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol HomePresentationLogic {
    func presentBeerList(_ list:[Beer])
    func presentError(_ error:String)
}

class HomePresenter: HomePresentationLogic {

	weak var viewController: HomeDisplayLogic?

    func presentBeerList(_ list:[Beer]) {
        viewController?.showBeerListSuccess(list)
    }
    
    func presentError(_ error:String) {
        viewController?.showBeerListError(error)
    }
    
}
