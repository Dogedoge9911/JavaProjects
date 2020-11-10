import UIKit

// Variables are places where you can store program data
// Try to read var as "create a new Variable"
// Swift is a type safe language; every variable must be of one specific type

var str3 = "Hello, world!" //Holds a string type
var age = 16 //Holds an integer


// Multiple line string
var str = "Hello, playground"
var str1 = """
This will
go over
multiple lines
"""

var str2 = """
This goes \
over multiple \
lines \
but stays on \
one line when you run it
"""

var pi = 3.14159 //Holds a double type
var codingIsFun = true //Holds a boolean type

// String Interpolation is a fancy way of saying combining variables and constants inside of a string
var name = "Johnny"
var height = 52
var sport = "cricket"
"My name is \(name). I am \(height) inches tall. My favourite sport is \(sport)."
// You can do it like "Your name is " + name..... but that's not efficient
// Swift doesn't let you add integers and doubles to a string

// Constants are like variables except you can't change the value after you set it
let constant = "can't change me"

// Type inference is when the program infers the type of something based on how you create it
//If you want to be explicit about the type of your data rather than relying on Swift, do this:
let album: String = "Shoot for the stars, aim for the moon"
let year: Int = 2020
let heightOfJohnny: Double = 1.52
let johnnyRocks: Bool = true

// Arrays are collection of values that are stored as a single value //Value types
let first = "Sunday"
let second = "Monday"
let third = "Tuesday"
let fourth = "Wednesday"
let fifth = "Thursday"
let sixth = "Friday"
let seventh = "Saturday"
let weekDays = [first, second, third, fourth, fifth, sixth, seventh]
//arrays position starts from 0
weekDays[1]  //prints Monday

//  If you’re using type annotations, arrays are written in brackets: [String], [Int], [Double], and [Bool]

//Sets are like arrays except its items are stored in an random order and no item can appear twice in a set; all items must be unique
let colours = Set(["red", "yellow", "blue"])
let colours2 = Set(["red", "yellow", "blue", "yellow", "blue"])

// Tuples are like arrays  excpet you can't add or remove items from a tuple, you can't change the type,
// and you can access the items in a tuple by its numerical position or name
var name1 = (first: "Jonathan", last: "Singh")
name1.0
name1.first
// You can change the values inside of a Touple but not the type

// Arrays vs Tuple vs Sets
// Tuple: If you need a specific, fixed collection of related values where each item has a precise position or name
// Set: If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly
// If you need a collection of values that can contain duplicates, or the order of your items matters use arrays
// arrays are not sorted

// Dictionaries: Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want. Most commonly used with strings
//Dictionaries are key value pairs
let heights = [
                "Jonathan Singh" : 1.52,
                "Arya Jain" : 0.52,
              ]
heights["Jonathan Singh"]

// If you request for a key that doesn't exist, Swift would return nil. To fix that, do this
heights["Dad", default : 0.0]

//Empty dictionary
var teams = [String : String]()
teams["paul"] = "Red"

//Empty Arrays
var results = [Int]()

//Empty Sets
var words = Set<String>()
var numbers = Set<Int>()

//You could do dictionaries and arrays like this, but it's not recommended
var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

// Enums are a way of defining groups of related values in a way that makes them easier to use; helps to stop usng different string each time
enum Result {
    case success
    case failure
}
let result = Result.success

// enums can also store associated values
enum Activity {
    case sitting (length: Int)
    case playing(game: String)
    case talking(topic: String)
}
let talking = Activity.talking(topic: "cricket")

enum Planet: Int {
    case mercury = 1
    case venus //this is now 2
    case earth // 3
    case mars  //4
}
let earth = Planet(rawValue: 3)
// Associated values attach extra data to an enum case; raw values are underlying data types for each case.

let firstScore = 12
let secondScore = 4
let sum = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let quotient = firstScore / secondScore
let remainder = firstScore % secondScore

//Operator overloading: what an operator does depends on the values you use it with
// '+' sums integers, joins strings, joins arrays, etc

//compund asignment operators aka shorthand operators
var testScore = 95
testScore -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// Comparison operators == != > < <= >=

// Conditons
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21
// AND
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
//OR
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// Both mean the same thing (Ternary operator)
let thirdCard = 11
let fourthCard = 10
print(thirdCard == fourthCard ? "Cards are the same" : "Cards are different")

if thirdCard == fourthCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

let score = 85

// ..< doesn't include final value while ... includes the final value. You can do one sided ranges as well
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// For loop is mainly used with finite sequences
let counting = 1...10
for number in counting {
    print ("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While loop is mainly used when you want something to loop until the sequence is false
var dope = 1

while dope <= 20 {
    print(dope)
    dope += 1
}

print("Ready or not, here I come!")

// repeat loop is like a while loop excepts it runs the loop at least once
var okay = 1

repeat {
    print(okay)
    okay += 1
} while okay <= 20

print("Ready or not, here I come!")

// use the keyword 'break' to exit a loop
var countDown = 10
while countDown >= 0 {
    print (countDown)
    
    if countDown == 4 {
        print ("I'm bored lmao. Let's go now")
        break
    }
    countDown -= 1
}

// exiting multiple loops

outsideLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print ("It's a bullseye!")
            break outsideLoop
        }
    }
}
// with a regular break, only the inner loop would be exited

// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
// continue: I'm done with the current run of this loop
// Break: I'm done with this loop altogether

for i in 1...5 {
    if i == 5 {
        continue
    }
    let sum = i + i
    print("\(i) + \(i) is \(sum).")
}

// Infinite Loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

// Function allows us to re-use code
func welcomePage() {
   let message = """
Welcome to the Krusty Krab Pizza!
It's the pizza for you and me :)
"""
   print (message)
}

welcomePage()
//Useful for using the same code somewhere else, breaking up code, and function composition: combining small functions into big functions

// Accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 2)

//returning values
func cube(number: Int) -> Int {
    return number * number * number
}
let answer = cube(number: 3)
print(answer)

//Parameter labels
func sayHello(to name: String){    //Externally it's called "to," but internally it's named "name"
    print("Hello, \(name)!")
}
sayHello(to: "John")

// Omitting parameter labels
// You can use _ for the external parameter name
// Mainly used when function name is a verb and the first parameter is a noun
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    }
    else {
        print("Oof it's \(person)....")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)

//Varadic numbers is a fancy way of saying they accept any number of parameters of the same type
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)
// The ... is what makes the parameter varadic

// Writing throwing functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}
//running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use this password")
}
// do starts a section of code that might cause problems
// try is used before every function that might throw an error
// catch lets you handle errors without breaking thr program

//inout parameters
//You can pass one or more parameters as inout which means that they can be changed inside your function
// Changing Inout parameters inside a function changes them outside too
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
// Function definition will always have name of function, parameters, return type

//creating basic closures
let driving = {
    print("I'm whipping!")
}
driving()
//helps store functionality

//accepting parameters
let driving1 = {
    (place: String) in
    print("I'm going to \(place)")
}
driving1("Oakville")
// in keyword is there to mark the end of the parameter

//Returning values from a closure
let drivingWithReturn = {
    (place: String) -> String in
    return "I'm going to \(place)"
}
let message1 = drivingWithReturn("Canada")
print(message1)

//Closures as parameters
let riding = {
    print("I'm driving a car")
}

func travel(action: () -> Void) {        //() -> means "accepts no parameters and returns nothing"
    print("I'm about to leave")
    action()
    print("I arrived!")
}
travel(action: riding)

//Trailing closure syntax
travel {
    print("I'm driving in da car")
}

//using closures as parameters when they accept parameters
func travelling(action:(String)-> Void) {
    print("Ya boi is getting ready to go")
    action("London")
    print("I arrived!")
}

travelling { (place: String) in
    print("I'm going to \(place) in my lambo")
}

//Using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//shorthand parameters names
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
travel { place -> String in
    return "I'm going to \(place) in my car"
}
travel { place in
    return "I'm going to \(place) in my car"
}
travel { place in
    "I'm going to \(place) in my car"
}
travel {
    "I'm going to \($0) in my car"
}
//If it's only one line of code, you can skip the keyword 'return'

//Closures with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//Returning closures from functions
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result1 = travel()
result1("London")

//Capturing values
func travel2() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
// Summarizing closures
//You can assign closures to variables, then call them later on.
//Closures can accept parameters and return values, like regular functions.
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.
//Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//If you use external values inside your closures, they will be captured so the closure can refer to them later.

//Creating structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

//Computed properties
struct Sport1 {
    var name: String                               //Stored properties
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"       //Computed properties
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
// willSet is used to take action before a property changes
// didSet is usd to take action after a property changes

//methods: functions inside structs arre called methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: (9_000_000))
london.collectTaxes()

//mutating methods: used to change a property inside a method
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

//properties and methods of strings
let string =  "do or do not, there is no try."
print(string.count) //Counts the number of characters in the string
print(string.hasPrefix("do")) //returns true if the string starts with specific letters
print(string.uppercased()) // uppercase the letters in the string
print(string.sorted()) //Sorts the letters of the string into an array

//properties and methods of arrays
var toys = ["Woody"]
print(toys.count) //counts the number of items in the array
toys.append("Woody") //adds an item to the array
toys.firstIndex(of: "Buzz") //lacate any item inside of an array
print(toys.sorted()) //sorts the items of the aray alphabetically
toys.remove(at: 1) //removes an item from the arrray

//Initializers: special methods that provide different ways to create structs
// Instance methd with no parameters
// Uses the keyword init
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "CATTY99"

//Referring to the current instance
// self represents the instance of that class
// instance is the details of a class
struct Person2 {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties: created only when needed
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Child {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Child(name: "Ed")
var familyTree = FamilyTree()
ed.familyTree

//Static properties and methods
// attached to a class rather than an object
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
print(Student.classSize)

// Access Control
struct Peep {
    private var id: String
    init(id: String) {
        self.id = id
    }
}

let eddy = Peep(id: "1234")

struct Peeps {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

//Structs Summary
/* 1. You can create your own types using structures, which can have their own properties and methods.
2. You can use stored properties or use computed properties to calculate values on the fly.
3. If you want to change a property inside a method, you must mark it as mutating.
4. Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
5. Use the self constant to refer to the current instance of a struct inside a method.
6. The lazy keyword tells Swift to create properties only when they are first used.
7. You can share properties and methods across all instances of a struct using the static keyword.
8. Access control lets you restrict what code can use properties and methods.
*/

//Creating your own classes
// Classes never come with a memberwise initializer
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

//Class inheritance
// creating a class based on another class

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// Overriding methods
class Dogs {
    func makeNoise() {
        print("Woof!")
    }
}

class Pug: Dogs {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy1 = Pug()
poppy1.makeNoise()

// final classes
final class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//copying objects
// when you copy a class, changing one does change the other if they point to the same thing
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

// Deinitializers: Code that gets run when an instance of a class is destroyed
class Person3 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person3()
    person.printGreeting()
}

//Mutability: if you have a constant class witha variable property, that property can be changed

//Classes summary
/*
1. Classes and structs are similar, in that they can both let you create your own types with properties and methods.
 2. One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
 3. You can mark a class with the final keyword, which stops other classes from inheriting from it.
 4. Method overriding lets a child class replace a method in its parent class with a new implementation.
5. When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
 6. Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
 7. Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
 */

//Protocols: what properties and methods something must have
protocol Identifiable {
    var id: String {get set}
}

struct User1: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

//Extensions: add methods to existing types
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

//Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

//Protocol and extensions summary
/*
 1. Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
2. You can build protocols on top of other protocols, similar to classes.
 3. Extensions let you add methods and computed properties to specific types such as Int.
4. Protocol extensions let you add methods and computed properties to protocols.
 5. Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
 */

//Handling missing data
var unknownage: Int? = nil
unknownage = 72

//unwrapping optionals
var name2: String? = nil

if let unwrapped = name2 {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

//Force unwrapping
let str5 = "5"
let num = Int(str5)!

//Implicity unwrapped optionals: don't need to inwrap them in order to use them
//"if let" and "guard let" is used to implicity unwrap optionals
let age4: Int! = nil

//Nil coalescing: unwraps an optional and returns the value insdie if there is one
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user1 = username(for: 15) ?? "Anonymous"

//optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()
// The question mark is optional chaining

//Optionals summary
// 1. Optionals let us represent the absence of a value in a clear and unambiguous way.
// 2. Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
// 3. You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
// 4. Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
// 5. You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
// 6. Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
// 7. You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
// 8. If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
// 9. You can use typecasting to convert one type of object to another.
// So basically I'm
