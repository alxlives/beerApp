//
//  HomeWorker.swift
//  Beer App
//
//  Created by MacDev on 17/01/20.
//

import UIKit

typealias BeerListSuccess = ((_ response: [Beer]) -> Void)
typealias BeerListError = ((_ errorMessage: String) -> Void)

protocol HomeWorkerProtocol {
    func getBeerList(onSuccess: @escaping BeerListSuccess, onFailure: @escaping BeerListError)
}

class HomeWorker: HomeWorkerProtocol {
    
    func getBeerList(onSuccess: @escaping BeerListSuccess, onFailure: @escaping BeerListError) {
        
        guard let request = BeerRequest.createRequest() else {
            return
        }
        
        URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
            
            guard let data = data, error == nil, response != nil else {
                onFailure(error?.localizedDescription ?? "Ocorreu um erro")
                return
            }
            
            do {
                let response = try JSONDecoder().decode([Beer].self, from: data)
                onSuccess(response)
            } catch {
                onFailure(error.localizedDescription)
            }
            
        }).resume()
        
    }
    
}
