//
//  DetailsViewControllerMock.swift
//  
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class DetailsViewControllerMock: DetailsDisplayLogic {
   
    var interactor: DetailsBusinessLogic?

    var showSuccessCalled = false
    var showErrorCalled = false

}

extension DetailsViewControllerMock {
    
    func showSuccess(viewModel: DetailsViewModel) {
        showSuccessCalled = true
    }
    
    func showError(msg: String) {
        showErrorCalled = true
    }
    
}
