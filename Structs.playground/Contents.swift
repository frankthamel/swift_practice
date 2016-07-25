//: Playground - noun: a place where people can play

import UIKit

struct  Contact {
    var firstName : String
    var lastName :  String
}

var person  = Contact(firstName: "Frank", lastName: "Thamel")
person.firstName = "Jude"
person.firstName

//initializers

struct  Address {
    var street :  String
    var city : String
    var country = "Sri Lanka"
    
    init(street : String , city : String){
        self.street = street
        self.city = city
    }
    
    init(street : String , city : String , country : String){
        self.street = street
        self.city = city
        self.country = country
    }
    
    func getFullAddress() -> String {
        return self.street + ", " + self.city + ", " + self.country
    }
}

var myAddress = Address(street: "12", city: "CW", country: "SL")
myAddress.getFullAddress()

var myNewAddress =  Address(street: "12", city: "CO")
myNewAddress.getFullAddress()




