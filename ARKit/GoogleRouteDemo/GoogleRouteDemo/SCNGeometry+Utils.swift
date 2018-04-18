//
//  Ext.swift
//  GoogleRouteDemo
//
//  Created by Nikolai Baklanov on 28/03/2018.
//  Copyright © 2018 Nikolai Baklanov. All rights reserved.
//

import Foundation
import ARKit

extension SCNGeometry {
    class func lineFrom(vector vector1: SCNVector3, toVector vector2: SCNVector3) -> SCNGeometry {
        let indices: [Int32] = [0, 1]
        
        let source = SCNGeometrySource(vertices: [vector1, vector2])
        let element = SCNGeometryElement(indices: indices, primitiveType: .line)
        
        return SCNGeometry(sources: [source], elements: [element])
        
    }
}
