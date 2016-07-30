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


