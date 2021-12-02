import Foundation
import UIKit

class Call {
    var currentNumber = 0
    var currentCaller = 0
    static let people = ["lubabah", "kida", "rudy", "stros", "brad", "pro", "fine", "kitt", "gim"]
    func nextCaller() {
        currentCaller = Int.random(in: 0...Call.people.count-1)
    }
    func nextNumber() {
        currentNumber = Int.random(in: 1...5)
    }
    func getColor() -> UIColor{
        switch currentNumber {
        case 1: return UIColor.red
        case 2: return UIColor.red
        case 3: return UIColor.orange
        case 4: return UIColor.yellow
        case 5: return UIColor.green
        default: return UIColor.black
        }
    }
}

