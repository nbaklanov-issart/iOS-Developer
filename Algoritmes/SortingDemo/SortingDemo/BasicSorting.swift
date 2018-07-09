import Foundation

class BasicSorting: NSObject
{
    public static func InsertionSort<T:Comparable>(sortTarget:Array<T>)->Array<T>
    {
        guard sortTarget.count > 1 else { return sortTarget }
        var targetCopy:Array = sortTarget
        
        for i in 1...targetCopy.count - 1 {
            var index:Int = i
            let currentElement = targetCopy[i]
            while index > 0 && targetCopy[index - 1] > currentElement {
                targetCopy[index] = targetCopy[index - 1]
                index -= 1
            }
            targetCopy[index] = currentElement
        }
        return targetCopy
    }
}
