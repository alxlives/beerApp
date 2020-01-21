//
//  HomeInteractorMock.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class HomeInteractorMock: HomeBusinessLogic {

    var presenter: HomePresentationLogic?
       
    var getListCalled = false
    
}

extension HomeInteractorMock {
    
    func getBeerList() {
        getListCalled = true
    }
    
}
