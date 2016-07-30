//: Playground - noun: a place where people can play

import UIKit

//: Closures

//this function takes a String and prints it
func printString (name : String ) {
    print("My name is \(name).")
}


printString("Frank")


/*
    Asign the function we just declared to a constant.
    Note that we do not add paranthaces "()" at the
    end of the function name.
*/
let printStringFunction = printString

printStringFunction("Anne")


func displayString (myPrintStringFunc : (String) -> ()){
    myPrintStringFunc("Charuka")
}

displayString(printStringFunction)



//using the filter function

let allNumbers = [1 , 2 , 3, 4, 5 ,6 ,7 ,8 ,9]

func isEven(i : Int ) -> Bool {
    return i % 2 == 0
}

let ifEven = isEven

let evenNumbers = allNumbers.filter(ifEven)

//capturing variables

func printerFunc () -> (Int) -> () {
    var runningTotal = 0
    func printInteger(number : Int) -> (){
        runningTotal += 10
        print("The number you entered is \(number). Running total \(runningTotal)")
    }
    return printInteger
}

let printNumbers = printerFunc()
printNumbers(2)
printNumbers(2)


let printNumbersTwo = printerFunc()
printNumbersTwo(3)
printNumbers(2)
printNumbersTwo(3)

//closures and expressions
func doubler (i : Int) -> Int {
    return i * 2
}

let doublerFunction = doubler
doublerFunction(2)

var sCouunt = [1,2,3,4,5,6,7]
let doubleNumbers  = sCouunt.map(doublerFunction)

//expressions

let trippleNumbers = sCouunt.map({(i:Int) -> Int in return i * 3})
trippleNumbers

//sort an array using closure expressions
 var nameArray = ["Frank" , "Anne" , "Charuka" , "Kapila" , "Bandara"]

// let sortedArray = nameArray.sort()
//let sortedArray = sorted(nameArray , {(s1 : String , s2: String) -> Bool in return s1 > s2})

// Rule #1
[1,2,3,4,5,6].map({(i : Int)-> Int in return i * 3})

//Rule #2 Infering type from context
[1,2,3,4,5,6].map({i in return i * 3})

//Rule #3 Implisit Returns from single Expression Closures
[1,2,3,4,5,6].map({i in i * 3})

//Rule #4 Shorthand argument names
[1,2,3,4,5,6].map({$0 * 3})

//Rule #5 Traling closures
[1,2,3,4,5,6].map(){$0 * 3}

[1,2,3,4,5,6].map(){
    (var digit) -> Int in
    if digit % 2 == 0 {
        return digit / 2
    }else {
        return digit
    }
}

//Rule #6 Ignoring Parentheses

[1,2,3,4,5,6].map {$0 * 3}





