//Let's add another feature to our previous application. Whenever we click on the Cold Call button, we will not only get a random name displayed on the top but also a random number from 1 to 5 inclusive in the center of the screen. If the number is 1 or 2, the number should have a red color, if the number is 3 or 4 then the number should have an orange color, and finally, if the number is 5 then the number should have a green color.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    let call = Call()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: Any) {
        call.nextCaller()
        call.nextNumber()
        updateUI()
    }
    
    func updateUI() {
        label.text = Call.people[call.currentCaller]
        numLabel.text = String(call.currentNumber)
        numLabel.textColor = call.getColor()
        
    }
    
}

