//
//  BeersResponse.swift
//  Beer App
//
//  Created by Alexandre Abreu on 17/01/20.
//  Copyright © 2020 Alexandre Abreu. All rights reserved.
//

import Foundation

struct Beer: Decodable {
    var id: Int
    var name: String
    var tagline: String
    var image_url: String
    var abv: Float?
    var ibu: Float?
    var description: String
}
