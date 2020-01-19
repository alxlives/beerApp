//
//  DetailsModels.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//

import UIKit

class DetailsDataStore {
    var beer:Beer?
    
    convenience init (beer: Beer) {
        self.init()
        self.beer = beer
    }

}

class DetailsViewModel {
    var name: String = ""
    var tagline: String = ""
    var abv: String = ""
    var ibu: String = ""
    var description: String = ""
    var imageData: Data?
    
    convenience init (beer: Beer) {
        self.init()
        
        self.name = beer.name
        self.tagline = beer.tagline
        self.description = beer.description

        if let abv = beer.abv {
            self.abv = "\(abv) %"
        }
        
        if let ibu = beer.ibu {
            self.ibu = "\(ibu) %"
        }
        
        let url = URL(string: beer.image_url)
        self.imageData = try? Data(contentsOf: url!)
    }
    
}
