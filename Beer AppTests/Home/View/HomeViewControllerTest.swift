//
//  HomeViewControllerTest.swift
//  Beer App
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import 

class HomeViewControllerTest: XCTestCase {
 
   var controller: HomeViewController = HomeViewController(nibName: nil, bundle: nil)
   var interactor: HomeInteractorMock!
   var controllerMock: HomeViewControllerMock!
   
   var window: UIWindow!
   
   override func setUp() {
       super.setUp()
       interactor = HomeInteractorMock()
       controllerMock = HomeViewControllerMock()
       controller.interactor = interactor
       
       window = UIWindow()
   }
   
   override func tearDown() {
       super.tearDown()
   }
    
}
