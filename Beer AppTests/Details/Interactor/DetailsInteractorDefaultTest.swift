//
//  DetailsInteractorDefaultTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class DetailsInteractorDefaultTest: DetailsInteractorTest {
    
    func testSuccess() {
        let beer = Beer(id: 1, name: "beer", tagline: "tagline", image_url: "1.png", abv: 1.0, ibu: 2.0, description: "description")
        interactor.dataStore.beer = beer
        interactor.getFieldsData()
        XCTAssert(presenter.presentBeerDataCalled)
    }
    
}
