//
//  DetailsInteractor.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

protocol DetailsBusinessLogic {
    func doSomething()
}

class DetailsInteractor: DetailsBusinessLogic {

    var presenter: DetailsPresentationLogic?
    var worker: DetailsWorker! = DetailsWorker()

    func doSomething() {
        worker.doSomeWork()
        presenter?.presentSomething()
    }

}
