//
//  HomePresenterDefaultTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class HomePresenterDefaultTest: HomePresenterTest {
    
    func testSuccess() {
        presenter.presentBeerList([])
        XCTAssert(controller.showListSuccessCalled)
    }
    
    func testError() {
        presenter.presentError("error")
        XCTAssert(controller.showListErrorCalled)
    }
    
}
