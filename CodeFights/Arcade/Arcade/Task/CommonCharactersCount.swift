import Foundation

class CommonCharactersCount: NSObject
{
    func sortByHeight(a: [Int]) -> [Int] {
        var copyArr:[Int] = a
        var onlyHumans:[Int] = Array()
        
        for element:Int in copyArr {
            if copyArr[element] > -1 {
                onlyHumans.append(copyArr[element])
                copyArr[element] = 0
            }
        }
        
        onlyHumans.sort(by: { (obj1:Int, obj2:Int) -> Bool in
            return obj1 < obj2
        })
        
        for element:Int in copyArr {
            if copyArr[element] > -1 {
                copyArr[element] = onlyHumans.remove(at:0)
            }
        }
        
        return copyArr
    }
}
