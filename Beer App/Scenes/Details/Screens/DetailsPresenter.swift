//
//  DetailsPresenter.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol DetailsPresentationLogic {
	func presentSomething()
}

class DetailsPresenter: DetailsPresentationLogic {

	weak var viewController: DetailsDisplayLogic?

	func presentSomething() {
		viewController?.showSuccess()
	}
}
