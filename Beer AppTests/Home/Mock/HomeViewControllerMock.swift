//
//  HomeViewControllerMock.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class HomeViewControllerMock: HomeDisplayLogic {
  
    var interactor: HomeBusinessLogic?

    var showListErrorCalled = false
    var showListSuccessCalled = false
    
}

extension HomeViewControllerMock {
    
    func showBeerListSuccess(_ viewModel: HomeViewModel) {
        showListSuccessCalled = true
    }
    
    func showBeerListError(_ msg: String) {
        showListErrorCalled = true
    }
    
}
