//
//  DummyObjectModel.swift
//  SwiftArrayExample
//
//  Created by Nikolai Baklanov on 07/10/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

import UIKit

class DummyObjectModel: NSObject, NSCoding {
    public var dummyName:String?
    public var dummyNumber:Int?
    
    static func randomDummyElement()->DummyObjectModel
    {
        let dummyObject:DummyObjectModel = DummyObjectModel()
        let randomNumber:Int = Int(arc4random())
        
        dummyObject.dummyName = String(format:"dummy name : %d", randomNumber)
        dummyObject.dummyNumber = randomNumber
        return dummyObject;
    }
    
    public func encode(with aCoder: NSCoder)
    {
        aCoder.encode(dummyNumber, forKey:"dummyNumber")
        aCoder.encode(dummyName, forKey:"dummyName")
    }
    
    static public func < (first:DummyObjectModel, second:DummyObjectModel) -> Bool
    {
        return false
    }
    
    static public func > (first:DummyObjectModel, second:DummyObjectModel) -> Bool
    {
        return false
    }
    
    public required convenience init?(coder aDecoder: NSCoder)
    {
        guard let title:String = aDecoder.decodeObject(forKey:"dummyName") as? String,
              let number:Int = aDecoder.decodeObject(forKey:"dummyNumber") as? Int
        else { return nil }
        
        self.init()
        self.dummyName = title
        self.dummyNumber = number
    }
}
