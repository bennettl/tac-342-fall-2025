import UIKit

//struct Computer {
//    // Properties
//    let name: String
//    let cpus: Int
//
//    // Methods
//    func turnOn(){
//        print("Computer \(name) is turning on...")
//    }
//
//    func turnOff(){
//        print("Computer \(name) is turning off...")
//    }
//
//    // initializer
//
//}
//
//// Memberwise initalizer
//let mac = Computer(name: "Bennett's Macbook Pro", cpus: 4)
//mac.name
//mac.cpus
//mac.turnOn()
//
//struct Rectangle {
//    // Stored properties
//    var width: Int
//    var height: Int
//
//    // Computed
//    var area: Int {
//        return width * height
//    }
//}
//
//var rect = Rectangle(width: 10, height: 20)
//rect.width = 20
//rect.height = 2000
//rect.area
//
//class Size {
//    let width: Double
//    let height: Double
//
//    init(width: Double, height: Double){
//        self.width = width
//        self.height = height
//    }
//}
//
//let size = Size(width: 10, height: 20)
//
//class Student {
//    nonisolated(unsafe) static var NumberOfStudents = 0
//    let firstName: String
//
//    init(firstName: String){
//        self.firstName = firstName
//        Student.NumberOfStudents += 1
//    }
//
//    deinit {
//        print("Take them off the roster")
//    }
//}
//
//let student1 = Student(firstName: "Sam")
//let student2 = Student(firstName: "Alice")
//let student3 = Student(firstName: "Joanna")
//Student.NumberOfStudents
//
//
//struct Resolution {
//    var width = 0
//    var height = 0
//}
//
//let hd = Resolution(width: 1920, height: 1080)
//var cinema = hd
//cinema.width = 2048
//
//// the hd's width remains unaffective because its a completely different instance than cinema
//hd.width
//
//class VideoMode {
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//}
//
//let tenEighty = VideoMode()
//tenEighty.resolution = hd
//tenEighty.interlaced = true
//tenEighty.frameRate = 25.0
//
//
//let alsoTenEighty = tenEighty
//alsoTenEighty.frameRate = 30.0
//
//
//internal struct Classroom {
//    fileprivate let capacity: Int = 0
//
//    func printCapacity(){
//        print("the classroom's capacity is \(capacity)")
//    }
//}
//
//let classroom1 = Classroom()
//classroom1.printCapacity()


// Null pointer exception 😲

// [undefined / null].property

// 1. Variables / constants cannot be null
let myFirstName: String = ""

// 2. But wait, sometimes it does make sense for a null state (e.g. initial page render where an absense of content until is full loading from some backend service)

//var myMiddleName: Optional<String> = nil
var myMiddleName: String? = nil
//myMiddleName = "test"
// Generic data - a data type that can work with other types

//print(myMiddleName)
// print output => Optional("test")

// How do we access the value of an optional

// 1. Force unwrapping
// Simpliest way to access the valeu of an optional
// Watch out: If the the optional is nil, then your app straight up crashes
//print(myMiddleName!)
// print output => test

// 2. Implicitly unwrapped optional
//var myMiddleName: String! = nil
//print(myMiddleName)
//print(myMiddleName)
//print(myMiddleName)
//print(myMiddleName)
//print(myMiddleName)

// 3. Optional binding
// if a value exists, execute and use it inside of an if statement
var myMiddleName: String? = nil

if let myMiddleName {
    print("My middle name is \(myMiddleName)")
} else {
    print("You have no middle name")
}


// 4. Optional chaining

// 5. Nil coalescing
var input: String?
var name = input ?? "N/A"

// 6. Guard statement
