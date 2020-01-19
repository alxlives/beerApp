//
//  DetailsInteractor.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol DetailsBusinessLogic {
    func getFieldsData()
    var dataStore: DetailsDataStore { get set }
}

class DetailsInteractor: DetailsBusinessLogic {

    var presenter: DetailsPresentationLogic?
    var dataStore: DetailsDataStore = DetailsDataStore()

    func getFieldsData() {
        guard let beer = dataStore.beer else {
            return
        }
        presenter?.presentBeerData(beer)
    }

}

