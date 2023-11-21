import Foundation

//1. variables and constants

let age = 30 //constant --int
var name = "Nick" //variable --string


//2. strings, ints, types

var Fname : String = "Hannah" //type string var
var height : Int = 20 //type int int var
let number = 32 //constant int


//3. Comments and Print

//comments explain what a line of code does eg. the below code prints a persons name
let FirstName = "Thabo"
FirstName // shows what value this constant holds
print("Hi, my name is \(FirstName)!")


//4. Math, Doubles and Floats

//Double values are values with decimal places
var double  = 185.43 //Double
var interger = 27 //int
var float = 1.364437493849348 //float

//Math operations -- cannot do mathematical calculations on objects of different type
//eg.  double * interger will throw a type error

//multiplication
Int(double) * interger // cast double as int
Double(interger) * double // cast int as double

let feet = 6
let inches = 4

//addition
feet + inches

//subtraction
feet - inches

//Division
feet / inches

//find how many inches tall you are
feet * 12 + inches


//5. Booleans and If Statements, else , and , or

var Riderheight = 76
var weight = 105

//Boolean - true/false
var canRideWaterSlide = height > 50 || weight >= 100

if canRideWaterSlide {
    print("You can water slide")
}
else{
    print("You are below permitted height and you may sort of be underweight")
}

var igama = "Nompilo"
var iminyaka = 27

if igama == "Nompilo" && iminyaka == 27 {
    print("Hi \(igama), I am \(iminyaka) too")
}


// 6. Arrays

//DECLARE ARRAY OF STRING
var movies : [String] = ["Saw", "Little mermaid", "Expandables"]
movies

movies[1] //"Little mermaid"
movies.append("John wick") // add new movie to list

//to append any type of object in array
var movieShow : [Any] = ["Saw", "Little mermaid", 7, "Expandables", 6]

movies.insert("Hello", at: 0) //specify where you want to add value
movies.remove(at: 0) //remove value at specified index

movies.count //count number values in arrays


// 7. Loops

//create for loop that increments from 1 to 10
for number in 1...10{
    print(number)
}

//print out a list of movies from movies array
for movie in movies {
    print(movie)
}

//print out list of lucky numbers using string interpolation
let luckyNumbers = [5, 52, 236, 2, 36, 23]

for x in 0..<luckyNumbers.count {
    print("\(x+1). \(luckyNumbers[x])")
}







