//
//  HomeInteractorTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class HomeInteractorTest: XCTestCase {
    
    var interactor = HomeInteractor()
    var presenter: HomePresenterMock!
    var worker: HomeWorkerMock!
    
    override func setUp() {
        super.setUp()
        presenter = HomePresenterMock()
        interactor.presenter = presenter
        
        worker = HomeWorkerMock()
        interactor.worker = worker
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

