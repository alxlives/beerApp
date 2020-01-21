//
//  DetailsPresenterMock.swift
//  
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class DetailsPresenterMock: DetailsPresentationLogic {
    
    var controller: DetailsDisplayLogic?
    
    var presentBeerDataCalled = false
    
}

extension DetailsPresenterMock {
    
    func presentBeerData(_ beer: Beer) {
        presentBeerDataCalled = true
    }
    
}
