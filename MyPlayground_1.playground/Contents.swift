//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str = "Hello  Frank"

var newOptional : String?

newOptional = "My name is frank"

print(newOptional)

//implesit or infered type
var name : String?
name = "Frank"

//explsit type
var lastName : String = "Thamel"

if let myFirstName = name {
    var fullName = myFirstName + " " + lastName
    //String interpolation
    print("My name is \(fullName)")
}

var age : Int = 10%3

var price : Double = 45/7

var isEnabled =  true


/*
 * Binary Operations
 *
 */

let width = 10 // in feet
let height = 5 // in feet

let area = width * height   // in sq. feet
let areaInSqMeter = Double(area)/10.764

print("Area is \(areaInSqMeter)")

/*
* Data structures
*
*/

//Arrays

//var toDo = [1 , 12.03 , "go to church" , "have break first" , "Practice swift"]

var toDo : [String] = ["go to church" , "have break first" , "Practice swift"]

toDo += ["Sleep"]

toDo.append("New work")

toDo.insert("Test middle insert", atIndex: 2)

//access the array elements
toDo[0]
toDo.last
toDo.first
toDo.indexOf("New work")
toDo.contains("New work")
toDo.count

//Dictionary

//key : value

var countries = ["LK" : "Sri Lanka" , "US" : "United States" , "UK" : "United Kingdom"]
countries["CA"] = "Canada"
countries.reverse()
print(countries["CA"]!)



/*
* Loops
*
*/

for item in toDo {
    print(item)
}


for item in countries {
    print(item)
}


for number in 0...2 {
    print(number)
}

var index  = 0
var isPublished  = true

while isPublished {
    print("Hello test index \(index)")
    index++
    isPublished = false
}

repeat {
    print("Hello \(index)")
    index++
}
while index < 10


/*
* If statements
*
*/

var isOver = false

if isOver {
    print("Game is over ")
}else {
    print("Game is not over ")
}


/*
* Switch statements
*
*/

let cards  = 1...13

for item in  cards{
    
    switch item {
        case 1...3 ,5: print(item)
        case 10 : print("Card 10 ")
        case 12 : print("Card 12 ")
        default : print("Other cards")
    }
}

//FizzBuzz
var fizzBuzzNumbers  = 1...100

for fizzBuzzNumber in fizzBuzzNumbers {
    if fizzBuzzNumber%3 == 0 && fizzBuzzNumber%5 == 0  {
        print("FizzBuzz")
    }
    else if fizzBuzzNumber%3 == 0 {
        print("Fizz")
    }
    else if fizzBuzzNumber%5 == 0 {
        print("Buzz")
    }
}







