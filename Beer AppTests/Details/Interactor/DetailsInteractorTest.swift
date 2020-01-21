//
//  DetailsInteractorTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class DetailsInteractorTest: XCTestCase {
    
    var interactor = DetailsInteractor()
    var presenter: DetailsPresenterMock!
    
    override func setUp() {
        super.setUp()
        presenter = DetailsPresenterMock()
        interactor.presenter = presenter
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

