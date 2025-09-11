import UIKit

var greeting = "Hello, playground"

// Closure: block of code that you can execute

// Functional programming

func greet(firstName: String) {
    print("Hello, \(firstName)")
}

greet(firstName: "Bennett")

var names : Array<String> = [
    "John", "Amy", "Sarah"
]


func alphabeticalSort(s1: String, s2: String) -> Bool {
    return s1 < s2
}


func reverseAlphabeticalSort(s1: String, s2: String) -> Bool {
    return s1 < s2
}

// A lot lines of code...

// Referencing a function
names.sort(by: reverseAlphabeticalSort)

// Closure expression
names.sort(by: { (s1: String, s2: String) -> Bool in
    // Beginning of the closure
    return s1 < s2
})

// Type inference
names.sort(by: { (s1, s2) in
    return s1 < s2
})

// Shorthand argument label
names.sort(by: {
    return $0 < $1
})

// Implicit return
names.sort(by: {
    $0 < $1
})

// Trailing closure syntax
names.sort { $0 < $1 }



print(names)
