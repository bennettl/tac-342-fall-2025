import UIKit

protocol Drivable {
    func turnLeft()
    func accelerate(speed: Int)
}


class Car : Drivable {
    func turnLeft() {
        print("I'm turning left")
    }

    func accelerate(speed: Int){
        print("I'm accelerating at \(speed) miles / hour")
    }
}


extension Double {
    var squared: Double {
        self * self
    }

    func printMyself(){
        print("my value is \(self)")
    }
}


var number: Double = 10
number.squared

number.printMyself()

extension String {
    var isValidPhoneNumber: Bool {
        let regex = "^[0-9]{10,}$"
        let pred = NSPredicate(format:"SELF MATCHES %@", regex)
        return pred.evaluate(with: self)
    }
}

"1415...".isValidPhoneNumber

//
//func generateSquared(number: Double) -> Double {
//    return number * number
//}


@propertyWrapper
struct Logger {
    var value = ""

    var wrappedValue: String {
        get {
            print("Accessing value - \(value)")
            return value
        }
        set {
            print("Setting value - oldValue \(value) \(newValue)")
            value = newValue
        }
    }
}

struct User {
    @Logger var firstName: String
    init(firstName: String) {
        self.firstName = firstName
    }
}

var user1 = User(firstName: "Sarah")
user1.firstName
user1.firstName = "Kyle"


enum VendingMachineError : Error {
    case invalidSelection
    case insufficientFunds
    case outOfStock
}

func getItemFromVendingMachine(itemId: String) throws -> String  {
    switch itemId {
    case "1":
        throw VendingMachineError.invalidSelection
    case "2":
        throw VendingMachineError.insufficientFunds
    case "3":
        throw VendingMachineError.outOfStock
    default:
        return "1 Coke"
    }
}

do {
    // A group of statements...
    try getItemFromVendingMachine(itemId: "1a")
} catch {
    print("the error being thrown is \(error)")
}
