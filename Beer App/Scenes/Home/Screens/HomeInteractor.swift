//
//  HomeInteractor.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

protocol HomeBusinessLogic {
    func doSomething()
}

class HomeInteractor: HomeBusinessLogic {

    var presenter: HomePresentationLogic?
    var worker: HomeWorker! = HomeWorker()

    func doSomething() {
        worker.doSomeWork()
        presenter?.presentSomething()
    }

}
