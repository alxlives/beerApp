//
//  HomePresenterMock.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class HomePresenterMock: HomePresentationLogic {

    var controller: HomeDisplayLogic?
       
    var presentErrorCalled = false
    var presentListCalled = false

}

extension HomePresenterMock {
    
    func presentBeerList(_ list: [Beer]) {
        presentListCalled = true
    }
    
    func presentError(_ error: String) {
        presentErrorCalled = true
    }
    
}
