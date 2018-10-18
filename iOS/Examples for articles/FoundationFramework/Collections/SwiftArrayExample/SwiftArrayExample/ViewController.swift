//
//  ViewController.swift
//  SwiftArrayExample
//
//  Created by Nikolai Baklanov on 06/10/2017.
//  Copyright © 2017 Nikolai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var resultsTable:UITableView!
    
    static let desiredCapacity:Int = 20000
    static let reusableCellName:String = "ResultCell"
    fileprivate var results:Array<ResultModel> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib:UINib = UINib.init(nibName: "ResultTableViewCell", bundle: nil);
        resultsTable.register(cellNib, forCellReuseIdentifier: ViewController.reusableCellName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        copyArray()
        createArray()
        searchInArray()
        accessArrayElements()
        modifyArray()
        enumeratingArray()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        resultsTable.reloadData()
    }

    fileprivate func createArray()
    {
        var createResult:ResultModel!
        createResult = ResultModel()
        createResult.title = "Create with constructor";
        createResult.time = Profiler.performBlockWithTime {
            var emptyArray:Array<String> = Array();
        }
        results.append(createResult);
        
        createResult = ResultModel()
        createResult.title = "Create with constructor and 10 objects";
        createResult.time = Profiler.performBlockWithTime {
            var preinitedArray:Array<String> = Array.init(repeating: "Z", count: 10);
        }
        results.append(createResult);
        
        createResult = ResultModel()
        createResult.title = "Create with constructor and sequence";
        let preDefinedArray:Array<String> = Array.init(repeating: "Z", count: 10);
        createResult.time = Profiler.performBlockWithTime {
            var sequenceArray:Array = Array.init(preDefinedArray);
        }
        results.append(createResult);
        
        createResult = ResultModel()
        createResult.title = "Create with literals";
        createResult.time = Profiler.performBlockWithTime {
            var literalsArray:[String] = [];
        }
        results.append(createResult);
        
        createResult = ResultModel()
        createResult.title = "Create with literals and 10 objects";
        createResult.time = Profiler.performBlockWithTime {
            var literalsPreInitedArray:[String] = ["Z","Z","Z","Z","Z","Z","Z","Z","Z","Z"];
        }
        results.append(createResult);
    }
    
    fileprivate func copyArray()
    {
        let literalsPreInitedArray:[String] = ["Z","Z","Z","Z","Z","Z","Z","Z","Z","Z"];
        var dublicatedArray = literalsPreInitedArray;
        
        dublicatedArray[0] = "A";
        
        print(literalsPreInitedArray);
        print(dublicatedArray);
        
        var arrayWithObjects:Array<DummyObjectModel> = createArrayWithRandomObjects(capacity: ViewController.desiredCapacity)
        var dublicatedArrayWithObjects = arrayWithObjects
        
        NSLog("arrayWithObject Element Name Before change : %@", arrayWithObjects[0].dummyName ?? "no value")
        dublicatedArrayWithObjects[0].dummyName = "My New Name"
        NSLog("arrayWithObject Element Name After change : %@", arrayWithObjects[0].dummyName ?? "no value")
        
        var unarhivedArray:Array<DummyObjectModel>?
        
        let arhiveResult:ResultModel = ResultModel()
        arhiveResult.title = String(format:"Arhive array (capacity %d)", ViewController.desiredCapacity);
        arhiveResult.time = Profiler.performBlockWithTime {
            let arhivedArray:Data = NSKeyedArchiver.archivedData(withRootObject: arrayWithObjects)
            unarhivedArray = NSKeyedUnarchiver.unarchiveObject(with: arhivedArray) as? Array<DummyObjectModel>
        }
        results.append(arhiveResult);
        
        if unarhivedArray != nil {
            
            NSLog("arrayWithObject Element Name : %@", arrayWithObjects[0].dummyName ?? "no value")
            NSLog("unarhivedArray Element Name : %@", unarhivedArray![0].dummyName ?? "no value")
            
            unarhivedArray![0].dummyName = "My New Unarhived Name"
            
            NSLog("unarhivedArray Element Name After change: %@", unarhivedArray![0].dummyName ?? "no value")
            NSLog("arrayWithObject Element Name After Arhive change: %@", arrayWithObjects[0].dummyName ?? "no value")
        }
    }
    
    fileprivate func searchInArray()
    {
        var searchResult:ResultModel!
        
        var searchArray:Array<DummyObjectModel>!
        
        searchResult = ResultModel()
        searchResult.title = String(format:"Create array (capacity %d)", ViewController.desiredCapacity);
        searchResult.time = Profiler.performBlockWithTime {
            searchArray = createArrayWithRandomObjects(capacity: ViewController.desiredCapacity)
        }
        results.append(searchResult);
        
        let searchElement:DummyObjectModel = searchArray[Int(searchArray.count / 2)];
        searchElement.dummyName = "MyDummyName"
        
        searchResult = ResultModel()
        searchResult.title = String(format:"Check contains in array (capacity %d)", ViewController.desiredCapacity);
        searchResult.time = Profiler.performBlockWithTime {
            let contains:Bool = searchArray.contains(searchElement)
        }
        results.append(searchResult);
        
        
        searchResult = ResultModel()
        searchResult.title = "Success search result";
        searchResult.time = Profiler.performBlockWithTime {
            let contains:Bool = searchArray.contains(where: {$0.dummyName == "MyDummyName"})
        }
        results.append(searchResult);
        
        searchResult = ResultModel()
        searchResult.title = "Fail search result";
        searchResult.time = Profiler.performBlockWithTime {
            let contains:Bool = searchArray.contains(where: {$0.dummyName == "MyWrongDummyName"})
        }
        results.append(searchResult);
        
        
        searchResult = ResultModel()
        searchResult.title = "Index of, by element";
        searchResult.time = Profiler.performBlockWithTime {
            if let index:Int = searchArray.index(of: searchElement) {
                let findedObject:DummyObjectModel = searchArray[index]
            }
        }
        results.append(searchResult);
        
        
        searchResult = ResultModel()
        searchResult.title = "Index of, by predicate";
        searchResult.time = Profiler.performBlockWithTime {
            if let index:Int = searchArray.index(where: {$0.dummyName == "MyDummyName"}) {
                let findedObject:DummyObjectModel = searchArray[index]
            }
        }
        results.append(searchResult);
        
        searchResult = ResultModel()
        searchResult.title = "First where, success ";
        searchResult.time = Profiler.performBlockWithTime {
            if let findedObject:DummyObjectModel = searchArray.first(where: {$0.dummyName == "MyDummyName"}) {
                print("Success")
            } else {
                print("Fail")
            }
        }
        results.append(searchResult);
        
        searchResult = ResultModel()
        searchResult.title = "First where, fail";
        searchResult.time = Profiler.performBlockWithTime {
            if let findedObject:DummyObjectModel = searchArray.first(where: {$0.dummyName == "MyWrongDummyName"}) {
                print("Success")
            } else {
                print("Fail")
            }
        }
        results.append(searchResult);
        
        let num:Array<Int> = [1, 4, 6, 8, -1, -56, 5]
        if let minimum:Int = num.min() {
            print("minimum : ", minimum)
        }
        if let maximum:Int = num.max() {
            print("maximum : ", maximum)
        }
        
        let findedLow:DummyObjectModel? = searchArray.min(by: {(a:DummyObjectModel, b:DummyObjectModel)->Bool in
            if (a.dummyNumber != nil && b.dummyNumber != nil) {
                return a.dummyNumber! < b.dummyNumber!
            } else {
                return false
            }
        })
        
        if findedLow != nil {
            print(findedLow!.dummyNumber!)
        }
        
        let findedHight:DummyObjectModel? = searchArray.max(by: {(a:DummyObjectModel, b:DummyObjectModel)->Bool in
            if (a.dummyNumber != nil && b.dummyNumber != nil) {
                return a.dummyNumber! < b.dummyNumber!
            } else {
                return false
            }
        })
        
        if findedHight != nil {
            print(findedHight!.dummyNumber!)
        }
    }
    
    fileprivate func accessArrayElements()
    {
        let numArray:[Int] = [4, 5, 6, 7, 8, 9, 10]
        let upTopPrefix:ArraySlice<Int> = numArray.prefix(upTo: 2)
        let throughPrefix:ArraySlice<Int> = numArray.prefix(through: 2)
        let whilePrefix:ArraySlice<Int> = numArray.prefix(while: {(a:Int)->Bool in
                                                                    return a < 10
                                                                 })
        
        print(upTopPrefix)
        print(throughPrefix)
        print(whilePrefix)
        
        let maxSuffix:ArraySlice<Int> = numArray.suffix(4)
        let startsFromSuffix:ArraySlice<Int> = numArray.suffix(from: 4)
        
        print(maxSuffix)
        print(startsFromSuffix)
    }
    
    fileprivate func modifyArray()
    {
        var changeResult:ResultModel!
        var numArray:[Int] = [4, 5, 6, 7, 8, 9, 10]
        let moreNumArray:[Int] = [11, 12, 13, 14, 15, 16, 17, 18]
        
        changeResult = ResultModel()
        changeResult.title = "Index change"
        changeResult.time = Profiler.performBlockWithTime {
            numArray[2] = 3
        }
        results.append(changeResult)
        
        changeResult = ResultModel()
        changeResult.title = "Append Single Element"
        changeResult.time = Profiler.performBlockWithTime {
            numArray.append(3)
        }
        results.append(changeResult)
        
        changeResult = ResultModel()
        changeResult.title = "Append Sequence"
        changeResult.time = Profiler.performBlockWithTime {
            numArray.append(contentsOf: moreNumArray)
        }
        results.append(changeResult)
        
        print(numArray)
        
        numArray = [4, 5, 6, 7, 8, 9, 10]
        changeResult = ResultModel()
        changeResult.title = "Insert Element"
        changeResult.time = Profiler.performBlockWithTime {
            numArray.insert(40, at: 0)
        }
        results.append(changeResult)
        
        
        changeResult = ResultModel()
        changeResult.title = "Insert Sequence"
        changeResult.time = Profiler.performBlockWithTime {
            numArray.insert(contentsOf: moreNumArray, at: 0)
        }
        results.append(changeResult)
        
        print(numArray)
        
        numArray = [4, 5, 6, 7, 8, 9, 10]
        changeResult = ResultModel()
        changeResult.title = "Subrange"
        changeResult.time = Profiler.performBlockWithTime {
            numArray.replaceSubrange(2..<numArray.endIndex, with: moreNumArray)
        }
        results.append(changeResult)
        
        print(numArray)
        
        var startArray:[Int] = [11, 12, 13, 14, 15, 16, 17, 18]
        print("start array capacity before : ", startArray.capacity)
        startArray.reserveCapacity(startArray.capacity + 4)
        startArray.append(contentsOf: repeatElement(2, count: 4))
        print("start array capacity after : ", startArray.capacity)
    }
    
    fileprivate func enumeratingArray()
    {
        var currentObject:DummyObjectModel!
        var enumerateResult:ResultModel!
        let arrayToEnum:Array<DummyObjectModel> = createArrayWithRandomObjects(capacity: ViewController.desiredCapacity)
        
        enumerateResult = ResultModel()
        enumerateResult.title = "Simple cycle"
        enumerateResult.time = Profiler.performBlockWithTime {
            for i in 0 ..< ViewController.desiredCapacity {
                currentObject = arrayToEnum[i]
            }
        }
        results.append(enumerateResult)
        
        
        enumerateResult = ResultModel()
        enumerateResult.title = "Using enumerated"
        enumerateResult.time = Profiler.performBlockWithTime {
            for (index, object) in arrayToEnum.enumerated() {
                currentObject = object
            }
        }
        results.append(enumerateResult)
        
        enumerateResult = ResultModel()
        enumerateResult.title = "Fast enumeration"
        enumerateResult.time = Profiler.performBlockWithTime {
            for dummyObject in arrayToEnum {
                currentObject = dummyObject
            }
        }
        results.append(enumerateResult)
    }
    
    @IBAction func reRunTests(sender:UIButton)
    {
        results.removeAll()
        
        copyArray()
        createArray()
        searchInArray()
        accessArrayElements()
        modifyArray()
        enumeratingArray()
        
        resultsTable.reloadData()
    }
    
    fileprivate func createArrayWithRandomObjects(capacity:Int)->Array<DummyObjectModel>
    {
        var dummyArray:Array<DummyObjectModel> = Array<DummyObjectModel>()
        dummyArray.reserveCapacity(capacity)
        
        for i in 0 ..< capacity {
            dummyArray.append(DummyObjectModel.randomDummyElement());
        }
        return dummyArray
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return results.count;
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell:ResultTableViewCell?  = resultsTable.dequeueReusableCell(withIdentifier: ViewController.reusableCellName) as? ResultTableViewCell;
        if (cell == nil) {
            cell = ResultTableViewCell();
        }
        
        let resultData:ResultModel = results[indexPath.row];
        cell?.resultTitle.text = resultData.title;
        cell?.resultValueTitle.text = String.init(format: "%f", resultData.time!);
        
        return cell!;
    }
}

