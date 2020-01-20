//
//  HomeInteractorTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import 

class HomeInteractorTest: XCTestCase {
    
    var interactor = HomeInteractor()
    var presenter: HomePresenterMock!
    
    override func setUp() {
        super.setUp()
        presenter = HomePresenterMock()
        interactor.presenter = presenter
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

