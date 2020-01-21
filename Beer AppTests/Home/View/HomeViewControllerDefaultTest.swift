//
//  HomeViewControllerDefaultTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class HomeViewControllerDefaultTest: HomeViewControllerTest {
    
    func testLoad() {
        controller.viewDidLoad()
        XCTAssert(interactor.getListCalled)
     }
    
}
