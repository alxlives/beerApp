//
//  HomeInteractor.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol HomeBusinessLogic {
    func getBeerList()
}

class HomeInteractor: HomeBusinessLogic {

    var presenter: HomePresentationLogic?
    var worker: HomeWorkerProtocol = HomeWorker()

    func getBeerList() {
        
        worker.getBeerList(onSuccess: { (list) in
            self.presenter?.presentBeerList(list)
         }, onFailure: { (error) in
            self.presenter?.presentError(error)
         })
        
    }

}
