//
//  Resource.swift
//  WeatherStationClient-iOS
//
//  Created by Nikolai Baklanov on 09/07/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

protocol Resource {
    var method: Method { get }
    var path: String { get }
}
