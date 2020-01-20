//
//  DetailsViewControllerTest.swift
//  
//
//  Created by MacDev on 20/01/20.
//

import XCTest
@testable import ___VARIABLE_Podname___

class DetailsViewControllerTest: XCTestCase {
 
   var controller: DetailsViewController = DetailsViewController(nibName: nil, bundle: nil)
   var interactor: DetailsInteractorMock!
   var controllerMock: DetailsViewControllerMock!
   
   var window: UIWindow!
   
   override func setUp() {
       super.setUp()
       interactor = DetailsInteractorMock()
       controllerMock = DetailsViewControllerMock()
       controller.interactor = interactor
       
       window = UIWindow()
   }
   
   override func tearDown() {
       super.tearDown()
   }
    
}
