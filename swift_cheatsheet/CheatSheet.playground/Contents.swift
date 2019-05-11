//1. Variables
var num = 0
num += 1

//Convert variables to strings
var numString:String = String(num)
print("Updated number: " + numString)
num += 5
print("Updated number: \(num)")

//Optional String
var optionalMessage: String? //It may contain a String value or just nil
print(optionalMessage); //should print nil

optionalMessage = "123"
optionalMessage = "456"
print(optionalMessage);

//2. Conditions

//if
let isActive = true
if isActive {
    print("This user is active")
} else {
    print("Activating user")
}

//Write a for loop with range operator
for _ in 0...4 {
    print("Hello!") //closed operator
}

for _ in 0..<5 {
    print("Hello again!")
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


//Array
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
//Sets - A set stores distinct values of the same type in a collection with no defin

//Functions
//Define a function
func greetUser(name: String, greeting:String) -> String
{
    return "\(greeting), \(name)"
}

let greet1 = greetUser(name: "Sophia", greeting: "Hello")
print(greet1)

//Define a function
func greetUser(name: String, bySaying greeting:String = "Hello") -> String
{
    return "\(greeting), \(name)"
}

var greet2 = greetUser(name: "Lu", bySaying: "hi")
print(greet2)

var greet3 = greetUser(name: "Lu")
print(greet3)

//_ states that you do not need to name the parameters in your function call
func greetUser(_ name: String, _ greeting:String) -> String
{
    return "\(greeting), \(name)"
}

var greet4 = greetUser("Sophia", "hello") //_ states that you do not need to name the parameters in your function call
print(greet4)




//Classes, Objects, Properties
class OptionalSuperClass {}
protocol OptionalProtocol1 {}
protocol OptionalProtocol2 {}

class MyClass : OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 {

  var myProperty:String
  var myOptionalProperty:String?
  // More properties...

  // Only need override if subclassing
  override init()  {
    myProperty = "Foo"
  }

  func doIt() -> Int {
    return 0
  }
  func doIt(a:Int) -> Int {
    return a
  }
  func doIt(a:Int, b:Int) -> Int {
    return a+b
  }

}

var a = MyClass()
a.myProperty
a.doIt()
a.doIt(a:1)
a.doIt(a:2, b:3)



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

// omits upper value, use ... to include
for i in 0..<3 {
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

var dict:[String: String] = ["Frog":
  "Kermit", "Pig": "Ms. Piggy",
  "Weirdo": "Gonzo" ]
dict["Weirdo"] = "Felipe"
dict["Frog"] = nil // delete frog
for (type, muppet) in dict {
  print("type: \(type), muppet: \(muppet)")
}

