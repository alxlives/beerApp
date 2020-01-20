//
//  HomeModels.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

class HomeViewModel {
    var list: [Beer] = []
    
    convenience init(list: [Beer]) {
        self.init()
        self.list = list
    }
    
}
