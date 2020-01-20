//
//  HomePresenterTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import 

class HomePresenterTest: XCTestCase {
    
    var presenter = HomePresenter()
    var controller: HomeViewControllerMock!
    
    override func setUp() {
        super.setUp()
        controller = HomeViewControllerMock()
        presenter.displayDelegate = controller
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

