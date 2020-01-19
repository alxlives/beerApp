//
//  DetailsPresenter.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol DetailsPresentationLogic {
    func presentBeerData(_ beer:Beer)
}

class DetailsPresenter: DetailsPresentationLogic {

	weak var viewController: DetailsDisplayLogic?

	func presentBeerData(_ beer:Beer) {
        let viewModel = DetailsViewModel(beer: beer)
        viewController?.showSuccess(viewModel: viewModel)
	}
}
