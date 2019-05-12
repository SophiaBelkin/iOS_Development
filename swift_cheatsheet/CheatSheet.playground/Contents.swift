/*
 #Table of contents
     1. Variables: int, string etc
     2. Functions
     3. Classes, including class declaration, protocols, outlets, properties, initializers, lazy properties and class methods
     4. Instances, including initialization and using properties
     5. Control Flow
     6. Loops
     7. Conditionals, including expressions, boolean logic and operators
     8. Optional, including optional binding, optional chaining and force unwrapping
     9. Dictionaries, including initialization and accessing key-value pairs
     10. Arrays, including accessing values, adding values and looping over values
     11. Closures, including complete closure syntax, capturing and escaping
     12. Guard & Defer, including early return with guard and deferred execution with defer
     13. Generics, including generic types and function generics
     14. Tuples
     15. Error Handling
*/


//1. Variables
var num = 0
num += 1

//Convert variables to strings
var numString:String = String(num)
print("Updated number: " + numString)
num += 5
print("Updated number: \(num)")


//2. Functions

//Define a function
func greetUser(name: String, greeting:String) -> String
{
    return "\(greeting), \(name)"
}

let greet1 = greetUser(name: "Sophia", greeting: "Hello")

//Define a function
func greetUser(name: String, bySaying greeting:String = "Hello") -> String
{
    return "\(greeting), \(name)"
}

var greet2 = greetUser(name: "Lu", bySaying: "hi")

var greet3 = greetUser(name: "Lu")

//_ states that you do not need to name the parameters in your function call
func greetUser(_ name: String, _ greeting:String) -> String
{
    return "\(greeting), \(name)"
}

var greet4 = greetUser("Sophia", "hello") //_ states that you do not need to name the parameters in your function call


//3. Strucute, Classes, Objects, Properties



//4. Instances




//5. Control Flow

//if-else
let isActive = true
if isActive {
    print("This user is active")
} else {
    print("Activating user")
}

//switch
let i = 3

switch i {
case 1:
    print("Number was 1")
case 2:
    print("Number was 2")
case 3:
    print("Number was 3")
default:
     print("Number was whatever")
}


//6. Loops

//Write a for loop with range operator
for _ in 0...4 {
    print("Hello!") //closed operator
}

for _ in 0..<5 {
    print("Hello again!")
}


//7. Conditionals

//8. Optional
var optionalMessage: String? //It may contain a String value or just nil
print(optionalMessage); //should print nil

optionalMessage = "123"
optionalMessage = "456"
print(optionalMessage);

//9. Dictionaries
//Initializing key-value paires
var dict:[String: String] = ["Frog":
    "Kermit", "Pig": "Ms. Piggy",
              "Weirdo": "Gonzo" ]
dict["Weirdo"] = "Felipe"
dict["Frog"] = nil // delete frog

//Accessing Key value paires
for (type, muppet) in dict {
    print("type: \(type), muppet: \(muppet)")
}


//10. Arrays
//Declaring arrays
var someInts = [Int]() //Creating an new array object that stores ints
var numbers = [1, 2, 3]

//Adding elements
numbers += [4]
numbers.append(5)
print("Aaray count: \(numbers.count)") //Getting the number of elements

var secondArray = [String]()
secondArray.append("test")
secondArray += ["test2", "test3"]
print("Second Array count: \(secondArray.count)") //Getting the number of elements

//Removing elements
secondArray.remove(at:0)
print("Second Array count: \(secondArray.count)") //Getting the number of elements

//Sets - A collection of unique values
var someSet: Set<Int> = [1,2,3]

someSet.contains(3)
someSet.insert(5) // sets are not ordered, no need to specify where you are inserting
let removedElement = someSet.remove(3)

//compare Sets
let anotherSet: Set<Int> = [5,7,13]

let intersection = someSet.intersection(anotherSet)
let difference = someSet.symmetricDifference(anotherSet)
let union = someSet.union(anotherSet)



//11. Closure


//12. Guard & Defer




//14. Tuples -  can easily group a set of values together
var origin = (x: 0, y: 0)

var point = origin
point.x = 3
point.y = 5

print(origin) // (0, 0)
print(point) // (3, 5)

//You can use tuples to initialize more than one variable on a single line:
var (a, b, c) = (1, 2, 3)
print(a)


//15. Error Handling
//throwing errors and catching them with do-try-catch



//enum
enum ClassesType: Int {
    case iOS = 1
    case android = 2
}
var type = ClassesType.iOS
print("ios class type \(type)")

var optionalDouble:Double? = nil
optionalDouble = 1.0
if let definiteDouble = optionalDouble {
    definiteDouble
}

var condition = true
if condition {
} else {
}

var val = 5
switch val {
case 1:
    "foo"
case 2:
    "bar"
default:
    "baz"
}


var personOne = "Ray"
var personTwo = "Brian"
var combinedString = "\(personOne): Hello, \(personTwo)!"
var tipString = "2499"
var tipInt = Int(tipString)

tipString = "24.99"
var tipDouble = Double(tipString)

var person1 = "Ray"
var person2 = "Brian"
var array:[String] = [person1, person2]
array.append("Waldo")
for person in array {
    print("person: \(person)")
}
var waldo = array[2]
