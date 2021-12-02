//Create an application that will pick out a random name from an Array of names every time the cold call button is clicked. We will be hard coding this Array of names in our View Controller. We will be using Auto Layout in this assignment. Make sure your application has behavior similar to the gif image below:

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let call = Call()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: Any) {
        if call.currentCaller < Call.people.count - 1 {
            call.nextCaller()
        }
        else { call.currentCaller = 0 }
        updateUI()
    }
    
    func updateUI() {
        label.text = Call.people[call.currentCaller]
    }
    
}

