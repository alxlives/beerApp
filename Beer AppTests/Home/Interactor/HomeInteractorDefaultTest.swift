//
//  HomeInteractorDefaultTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class HomeInteractorDefaultTest: HomeInteractorTest {
    
    func testSuccess() {
        worker.showError = false
        interactor.getBeerList()
        XCTAssert(presenter.presentListCalled)
    }
    
    func testError() {
        worker.showError = true
        interactor.getBeerList()
        XCTAssert(presenter.presentErrorCalled)
    }
    
}
