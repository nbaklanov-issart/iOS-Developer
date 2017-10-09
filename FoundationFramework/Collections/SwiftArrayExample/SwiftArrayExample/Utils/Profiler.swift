//
//  Profiler.swift
//  SwiftArrayExample
//
//  Created by Nikolai Baklanov on 07/10/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

import UIKit

typealias EmptyBlock = ()->Void

class Profiler: NSObject {

    static func performBlockWithTime(block:EmptyBlock) -> TimeInterval
    {
        let startDate:Date = Date.init();
        block();
        let endDate:Date = Date.init();
        return endDate.timeIntervalSince(startDate);
    }
}
