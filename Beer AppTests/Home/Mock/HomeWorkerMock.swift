//
//  HomeWorkerMock.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//


import XCTest
@testable import Beer_App

class HomeWorkerMock: HomeWorkerProtocol {
    var showError = false
}

extension HomeWorkerMock {
    
    func getBeerList(onSuccess: @escaping BeerListSuccess, onFailure: @escaping BeerListError) {
        
        if showError {
            onFailure("error")
            return
        }
        
        onSuccess([Beer(id: 1, name: "beer", tagline: "tagline", image_url: "img.png", abv: 1.0, ibu: 2.0, description: "description")])
    }
    
}
