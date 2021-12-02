import Foundation

class Call {
    var currentCaller = 0
    static let people = ["lubabah", "kida", "rudy", "stros", "brad", "pro", "fine", "kitt", "gim"]
    func nextCaller() {
        currentCaller = Int.random(in: 0...Call.people.count-1)
    }
}

