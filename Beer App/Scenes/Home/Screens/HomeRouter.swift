//
//  HomeRouter.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

@objc protocol HomeRoutingLogic {

}

class HomeRouter: NSObject, HomeRoutingLogic {

    weak var viewController: HomeViewController?

}
