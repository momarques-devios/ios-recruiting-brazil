//
//  APIService.swift
//  TesteConcrete
//
//  Created by Mônica Marques on 04/03/20.
//  Copyright © 2020 Mônica Marques. All rights reserved.
//

import Foundation
import Alamofire

class APIService: NSObject {
    func setupAPIHeader() -> HTTPHeaders {
        
        return [
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YWY2NWRmMWFkOGI2YjBiNDA4MmVlNWU0ZDFhYmZjOCIsInN1YiI6IjVlNWZjYjUzOWI4NjE2MDAwZjAwYzVhNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.N_UflBgyhq3-daIx1tgJLsQ5At3oVhD7UwcBSavE2tI",
        "Accept": "application/json",
        "Content-Type": "application/json;charset=utf-8"]
        
    }
    
    func APIRequest(urlString: String, method: HTTPMethod, completion: @escaping (AFDataResponse<Data>) -> Void ) {
        
        AF.request(urlString, method: method , headers: self.setupAPIHeader()).responseData { response in
            
            completion(response)
        }
        
    }
}
