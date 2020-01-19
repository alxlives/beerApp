//
//  BeersRequest.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//  Copyright © 2020 MacDev. All rights reserved.
//

import Foundation

class BeerRequest: NSObject {
    
    static let serviceURL = "https://api.punkapi.com/v2/beers"

    class func createRequest() -> URLRequest? {
        guard let url = URL(string: serviceURL) else { print("URL is invalid"); return nil}
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "accept")
        request.addValue("application/json", forHTTPHeaderField: "content-type")
        return request
    }
    
}
