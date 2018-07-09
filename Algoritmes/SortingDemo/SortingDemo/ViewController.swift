import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print(BasicSorting.InsertionSort(sortTarget: [4,5,8,1,2,5,6,7,7,7,1,2,9,45,67]))
    }

}

