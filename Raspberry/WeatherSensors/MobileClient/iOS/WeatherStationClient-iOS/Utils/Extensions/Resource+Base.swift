//
//  Resource+Base.swift
//  WeatherStationClient-iOS
//
//  Created by Nikolai Baklanov on 09/07/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import Foundation

extension Resource {
    var method: Method {
        return .GET
    }
    
    func requestWithBaseURL(baseURL: URL) -> URLRequest {
        let methodUrl:URL? = baseURL.appendingPathComponent(path)
        
        guard methodUrl != nil else { fatalError("Error creating method path") }
        guard var components:URLComponents = URLComponents(url:methodUrl!, resolvingAgainstBaseURL: false) else {
            fatalError("Error during creation url components")
        }
        
        var request:URLRequest = URLRequest.init(url: methodUrl!)
        request.httpMethod = method.rawValue
        
        return request
    }
}
