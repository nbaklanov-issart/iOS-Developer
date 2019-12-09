import UIKit

class TreeNode: NSObject {
    fileprivate var id:Int = -1
    //Implement 'childs' property - collection of TreeNodes
    
    init(nodeId:Int) {
        super.init()
        id = nodeId
    }
    
    func addChildNode(newChild:TreeNode) {
        //Implement
    }
    
    func removeChild(child:TreeNode) {
        //Implement
    }
    
    static func findNodeById(searchId:Int, treeRoot:TreeNode) -> TreeNode? {
        //Implement
        return nil
    }
}
