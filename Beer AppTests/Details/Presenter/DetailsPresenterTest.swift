//
//  DetailsPresenterTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class DetailsPresenterTest: XCTestCase {
    
    var presenter = DetailsPresenter()
    var controller: DetailsViewControllerMock!
    
    override func setUp() {
        super.setUp()
        controller = DetailsViewControllerMock()
        presenter.viewController = controller
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

