import Foundation


//1. Tuples and sets

//Tuples
var dog : (String, Int) = ("Fido", 8)

//get index value
dog.0
dog.1

//sets - same as an array but everything in a set has to be unique
//sets have no order to them and return randomly ordered value array and does not return duplicate values
var luckyNumbers : Set = [2,2,3,4,5,6,7,7,8,9,10]

// to search for a value in a set use .contains as you cannot use indexing
luckyNumbers.insert(11)
luckyNumbers
luckyNumbers.contains(2)

var fruits : Set = ["banana","apple","strawberry"]
fruits.insert("plum")
fruits

//2. Dictionaries - key value pairs
var nickWords = ["zabang": "when you finally get your code right", "hooha" : "when you have been coding for 3 hours and still cant find out whats wrong"]

nickWords["hooha"] // returns message for key wooha

var dogAge = ["Fido":5, "Jane":4, "sean":6]

dogAge["Fido"]

//add new element
dogAge["sandy"] = 9
dogAge

//update value for key
dogAge["sandy"] = 3
dogAge

//remove value
dogAge.removeValue(forKey: "sandy")
dogAge


//3. Functions

func hello(){
    print("hey!")
}
//invoke
hello()


//functions with parameters
func personGreeting(person: String){
    print("Hello \(person)")
}

personGreeting(person: "Siya")


func addTwoNumbers(num1: Int, num2: Int){
    print(num1 + num2)
}

addTwoNumbers(num1: 3, num2: 5)

//Function with return type
func addTwoIntNumbers(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

var sum = addTwoIntNumbers(num1: 9, num2: 5)

//pass function as parameter
var funcSum = addTwoIntNumbers(num1: 9, num2: addTwoIntNumbers(num1: 9, num2: 5))
sum
funcSum


//Make a function that take an int and a string and prints the string as many times
func printMachine(text: String, numberOfTimes: Int){
    for _ in 1...numberOfTimes {
        print(text)
    }
}


printMachine(text: "Because I'm happy", numberOfTimes: 5)


//4. Optionals

// allowing object variables to be nil(nothing)
//need to specify the type of your optional value

var age : Int? = 30 //int optional
var name : String? = "Nick" //string optional

if let number = Int("50") {
    print(number)//ensures number is not nil
}

//Optionl that take in a string? and checks if its nil
func printOptional(text: String?){
    if let inputText = text {
        print(inputText)
    }
    else{
        print("IT IS NIL")
    }
}

printOptional(text: "HEY!")

//5. Classes
//classes are blueprints to create objects
class Dog {
    //properties
    var name = ""
    var age = 0
    var furColor = ""
    
    func bark() {
        print("Woof! my name is \(name) and I am \(age) years old and I am \(furColor) in colour")
    }
}

var myDog = Dog()

myDog.name = "Matt"
myDog.age = 5
myDog.furColor = "Brown"

myDog.bark()


// 6. Structs
struct Animal {
    var name = ""
    var age = 0
    var type = ""
    
    func announceAnimal() {
        print("Hi my name is \(name). I am \(age) years old and I am a \(type).")
    }
}


var myAnimal = Animal(name: "Marly", age: 6, type: "Bird")
myAnimal.announceAnimal()

//7. Enums

enum Compass {
    case North
    case South
    case East
    case West
}


//get value from enum
var direction : Compass = .East

func getDirection(whichWay : Compass){
    if whichWay == .East {
        print("Turn right")
    }
}


getDirection(whichWay: .East)


enum FurColor {
    case Brown
    case Black
    case White
    case Golden
}

struct Dogg {
    var age : Int
    var name : String
    var furColor : FurColor
}

Dogg(age: 8, name: "Fugo", furColor: .Brown)


//8.   
var year = 2023

switch year {
case 2000...year:
    print("You're a 2k")
case 1990...1999:
    print("You are a 1k, LOL")
case 1980...1989:
    print("An 80s baby")
default:
    print("Youre most definitely ancient or haven't been born yet")
}

func directions(whichWay: Compass){
    switch whichWay{
    case .East:
        print("Turn Right!")
    case .North:
        print("Turn UP!")
    case .West:
        print("Turn Left!")
    case .South:
        print("Turn Down!")
    }
}

directions(whichWay: .South)
