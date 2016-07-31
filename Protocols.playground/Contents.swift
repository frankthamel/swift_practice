//: Playground - noun: a place where people can play

import UIKit

protocol FullyName {
    var fullName : String { get }
}

struct User : FullyName {
    var fullName : String
}

let user = User(fullName: "Frank")
user.fullName

struct Friend : FullyName {
    var firstName : String
    var middleName : String
    var lastName : String
    
    var fullName : String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Frank", middleName: "Jude", lastName: "Thamel")
friend.fullName


//Inheritance vs Protocols

//vehicle protocol

protocol Breakable {
    var brakes : String { get }
    func stop ()
    func slamOnBrakes ()
}

protocol Drivable {
    var steeringWheel : String { get }
    var tires : String {get set}
    func startEngine()
    func stopEngine ()
    func turnLeft ()
    func turnRight()
    func reverse()
}

//protocol Vehicle : Breakable , Drivable {
//    var numberOfSeats : Int { get }
//}

func registerForRace (vehicle : protocol<Drivable , Breakable> ){
    print("Start the race 1")
}

