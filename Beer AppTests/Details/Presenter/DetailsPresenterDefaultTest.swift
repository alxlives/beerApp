//
//  DetailsPresenterDefaultTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class DetailsPresenterDefaultTest: DetailsPresenterTest {
    
    func testPresentSuccess() {
        presenter.presentBeerData(Beer(id: 1, name: "beer", tagline: "tag", image_url: "1.png", abv: 1.0, ibu: 2.0, description: "description"))
        XCTAssert(controller.showSuccessCalled)
    }
    
}
