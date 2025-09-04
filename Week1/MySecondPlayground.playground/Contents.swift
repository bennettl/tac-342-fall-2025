import UIKit



// This is a single line comment

/*

 This
 allows
 you
 to write multiple lines

 */

// Data - Types

// 1. Storage requirements
// 2. Capability

// Character
//"A"
//"0"
//"👋🏻"
//
//// String
//"Test"
//"0123456789"
//"true"
//
//// Integer (Int)
//1
//-1
//0
//
//// Floating Point (Float / Double)
//// By default, swift infers a floating point as a double
//12.000000
//45.67
//-10.20
//
//// Boolean (Bool)
//true
//false
//
//// Constants / Variables
//
//// Constant
//let name: String = "John"
////name = "John"
//
//// Variable
//var money: Int = 100
//money = 1000
//
//// Type Inference
//let lastName = "Lee"
//
//
//// My name is Bennett and i have 1000 dollars
//"My name is \(name) i have \(money) dollars"
//
//// Operators (symbols)
//// Arithmetic
//10 + 1
//10 - 1
//10 / 1
//10 * 1
//10.0 / 3.0
//10 % 3
//
//// Relational
//10 > 1 // greater than
//10 < 1 // less than
//10 <= 1 // greater than or equal
//// ...
//10 == 10
//10 != 1
//
//// Logical: (OR, AND, NOT)
//
//// OR: only one needs to be true for the entire expression to be true
//name == "Bennett" || name == "John"
//
//
//// AND: every expression needs to be true for the entire expression to be true
//name == "Bennett" && name == "John"
//
//// NOT inverts the boolean value
//!name.isEmpty
//
//// Control Flow
//
//// Branching / Condition
//// The program can execute a piece of code if the condition is true
//if name == "Bennett" {
//    print("Hey Bennett")
//} else if name == "John" {
//    print("Hey John")
//} else {
//    print("Hey someone else")
//}
//
//// Switch (synatic sugar)
//switch name {
//case "Bennett":
//    print("Hey Bennett")
//case "John", "Kyle", "Sam":
//    print("Hey John, Kyle, or Sam")
//default:
//    ()
//}
//
//switch money {
//case 0...100:
//    "Low budget"
//case 101...500:
//    "Medium budget"
//default:
//    "High budget"
//}
//
//// Loops
//
//// For - execute a finite amount of times
//
//for number in 0..<10 {
//    print(number)
//}
//
//// While - keep executing code until your condition becomes false
//
//var i = 0
//while i < 10 {
//    print("i'm in while loop \(i)")
////    i = i + 1
//    i += 1
//}

// Functions
// Block of code that we can execute

// DRY - Don't repeat yourself

// Stage 1: Definition
// No resources are consumed
//func greet(){
//    let firstName = "John"
//    let lastName = "Lee"
//    print("Hello, \(firstName) \(lastName)!")
//}
//
//// Stage 2: Invocation
//// Resources WILL BE used
//greet()
//greet()
//greet()
//greet()
//greet()
//greet()

// Functions - Inputs

//func greet(firstName: String, lastName: String) {
//    print("Hello \(firstName) \(lastName)")
//}
//
//greet(firstName: "John", lastName: "Doe")


// Argument labels can be ommitted
func greet(_ firstName: String, _ lastName: String) {
    print("Hello \(firstName) \(lastName)")
}

greet("John", "Smith")

// Customize

func divide(_ firstNumber: Double, by secondNumber: Double){
    print("\(firstNumber / secondNumber)")
}

divide(10, by: 2)

// Output

func subtract(x: Int, y: Int) -> Int {
    return x - y
}

let result = subtract(x: 10, y: 2)
result + 1

// Tuple -> lightweight array
func getWebPage() -> (String, Int) {
    return ("<html>...</html>", 100)
}

let webPageResult = getWebPage()
webPageResult.0
webPageResult.1

// Variadic parameters: Variable number of arguments
func sum(numbers: Int...) -> Int {
    var result = 0
    for number in numbers {
        result += number
    }
    return result
}

sum(numbers: 1,2,3,4,5)



// Definition
struct Computer {

    // Properties - state

    let material: String
    let name: String

    // Methods - behavior / action

    func turnOn() {

    }
    func turnOff(){

    }

    // Initializes - to initialize an object with some define properties


}


















