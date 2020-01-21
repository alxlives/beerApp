//
//  DetailsViewControllerTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import Beer_App

class DetailsViewControllerTest: XCTestCase {
 
   var controller: DetailsViewController = DetailsViewController()
   var interactor: DetailsInteractorMock!
   var controllerMock: DetailsViewControllerMock!
   
   var window: UIWindow!
   
   override func setUp() {
       super.setUp()
       interactor = DetailsInteractorMock()
       controllerMock = DetailsViewControllerMock()
       controller.interactor = interactor
       
       window = UIWindow()
       _ = controller.view
   }
   
   override func tearDown() {
       super.tearDown()
   }
    
}
