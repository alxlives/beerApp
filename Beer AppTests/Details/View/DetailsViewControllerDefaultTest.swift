//
//  DetailsViewControllerDefaultTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class DetailsViewControllerDefaultTest: DetailsViewControllerTest {
    
    func testViewDidLoad() {
        controller.viewDidLoad()
        XCTAssert(interactor.getFieldsDataCalled)
    }
    
}
