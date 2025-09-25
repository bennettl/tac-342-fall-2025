import UIKit


// Create an array
let names: Array<String> = [
    "Sarah",
    "Emily",
    "John"
]

// Get element from array (subscript notation)
names[0] // Sarah

// Enumerate / Iterate over the array
for name in names {
    print("Name: \(name)")
}

names.count
names.isEmpty
let sarahsName = names.first

names.last

// Mutating array
var schools = [
    "USC",
    "UCLA",
    "UCSF"
]

// Add to array
schools.append("LMU")
schools.insert("UCSD", at: 0)
schools.contains("USC")


// Explicit Type                / Shorthand Type
// Optional<String>             / String?
// Array<String>                / [String]
// Dictionary<String, String>   / [String: String]

// Remove from array (removes "UCLA")
schools.remove(at: 1)


// Create a dictionary
var airports: Dictionary<String,String> = [
    "SFO": "San Francisco",
    "LAX": "Los Angeles",
    "JFK": "New York"
]
// Access values
airports["SFO"] // String?
airports.count
airports.isEmpty
airports.keys
airports.values

// Enumerating over the dictionary
for (key, value) in airports {
    print("\(key): \(value)")
}

// Change the dictionary

// Add key value pairs
airports["SJC"] = "San Jose"

// Remove
airports["JFK"] = nil
