//
//  RaspberryApi+Methods.swift
//  WeatherStationClient-iOS
//
//  Created by Nikolai Baklanov on 09/07/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import Foundation

extension RaspberryApi:Resource {
    var path: String {
        return self.rawValue
    }
}
