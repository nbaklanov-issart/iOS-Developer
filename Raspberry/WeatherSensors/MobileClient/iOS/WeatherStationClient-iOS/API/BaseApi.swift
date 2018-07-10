//
//  BaseApi.swift
//  WeatherStationClient-iOS
//
//  Created by Nikolai Baklanov on 09/07/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import Foundation
import RxSwift

class BaseApi: NSObject {
    
    fileprivate static let RASPBERRY_BASE_API:String = "http://192.168.1.156:3000"
    fileprivate let session: URLSession
    
    init(configuration:URLSessionConfiguration = URLSessionConfiguration.default) {
        session = URLSession(configuration: configuration)
    }
    
    private func data(resource: Resource) -> Observable<Data> {
        let request = resource.requestWithBaseURL(baseURL: URL.init(string: BaseApi.RASPBERRY_BASE_API)!)
        
        return Observable.create { observer in
            let task = self.session.dataTask(with: request) { data, response, error in
                if let error = error {
                    observer.onError(error)
                } else {
                    guard let HTTPResponse = response as? HTTPURLResponse else {
                        fatalError("Couldn't get HTTP response")
                    }
                    if 200 ..< 300 ~= HTTPResponse.statusCode {
                        observer.onNext(data ?? Data())
                        observer.onCompleted()
                    }
                    else {
                        observer.onError(NSError.init())
                    }
                }
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
    
    public func objects(resource: Resource) -> Observable<Dictionary<String, Any>> {
        return data(resource: resource).map { data in
            let serialized:Any? = try? JSONSerialization.jsonObject(with: data, options: [])
            if let result:Dictionary<String, Any> = serialized as? Dictionary<String, Any> {
                return result
            } else {
               throw NSError.init()
            }
        }
    }
}
