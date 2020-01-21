//
//  DetailsInteractorMock.swift
//  
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class DetailsInteractorMock: DetailsBusinessLogic {

    var dataStore: DetailsDataStore = DetailsDataStore()
    var presenter: DetailsPresentationLogic?
       
    var getFieldsDataCalled = false
    
}

extension DetailsInteractorMock {
    
    func getFieldsData() {
        getFieldsDataCalled = true
    }
    
}
