//
//  MainViewModel.swift
//  WeatherStationClient-iOS
//
//  Created by Nikolai Baklanov on 10/07/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import RxSwift
import RxCocoa

class MainViewModel: NSObject {
    fileprivate static let TEMPERATURE_FIELD_NAME:String = "temperature"
    fileprivate static let HUMIDITY_FIELD_NAME:String = "humidity"
    fileprivate static let PRESSURE_FIELD_NAME:String = "pressure"
    
    fileprivate let disposeBag:DisposeBag = DisposeBag()
    
    public let temperature:BehaviorRelay<String> = BehaviorRelay.init(value: "")
    public let pressure:BehaviorRelay<String> = BehaviorRelay.init(value: "")
    public let humidity:BehaviorRelay<String> = BehaviorRelay.init(value: "")
    
    override init() {
        super.init()
        
        updateHumidity()
        updatePressure()
        updateTemperature()
    }
    
    fileprivate func updateTemperature() {
        let api:BaseApi = BaseApi.init(configuration: URLSessionConfiguration.default)
        api.objects(resource: RaspberryApi.TEMPERATURE).subscribe { (data) in
            guard data.element != nil else { return }
            let response:Dictionary<String, Any> = data.element!
            if response[MainViewModel.TEMPERATURE_FIELD_NAME] != nil {
                self.temperature.accept(response[MainViewModel.TEMPERATURE_FIELD_NAME] as! String)
            }
        }.disposed(by: disposeBag)
    }
    
    fileprivate func updatePressure() {
        let api:BaseApi = BaseApi.init(configuration: URLSessionConfiguration.default)
        api.objects(resource: RaspberryApi.PRESSURE).subscribe { (data) in
            guard data.element != nil else { return }
            let response:Dictionary<String, Any> = data.element!
            if response[MainViewModel.PRESSURE_FIELD_NAME] != nil {
                self.pressure.accept(response[MainViewModel.PRESSURE_FIELD_NAME] as! String)
            }
        }.disposed(by: disposeBag)
    }
    
    fileprivate func updateHumidity() {
        let api:BaseApi = BaseApi.init(configuration: URLSessionConfiguration.default)
        api.objects(resource: RaspberryApi.HUMIDITY).subscribe { (data) in
            guard data.element != nil else { return }
            let response:Dictionary<String, Any> = data.element!
            if response[MainViewModel.HUMIDITY_FIELD_NAME] != nil {
                self.humidity.accept(response[MainViewModel.HUMIDITY_FIELD_NAME] as! String)
            }
        }.disposed(by: disposeBag)
    }
}
