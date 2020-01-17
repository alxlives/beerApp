//
//  HomePresenter.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol HomePresentationLogic {
	func presentSomething()
}

class HomePresenter: HomePresentationLogic {

	weak var viewController: HomeDisplayLogic?

	func presentSomething() {
		viewController?.showSuccess()
	}
}
