//: Playground - noun: a place where people can play

import UIKit

class Book {
    var title : String
    var price : Double = 0.0
    
    //Designated initializer
    init (title : String , price : Double){
        self.title = title
        self.price = price
    }
    
    func discountedPrice (percentage : Double) -> Double {
        return price - ( price * percentage / 100)
    }
}

let myBook = Book(title: "Kiddy", price: 20.5)

/*
 * although myBook assigned as let we can change the price.
 * because title and price attributes are assigned as variables insithe object
 *
 */
myBook.price
myBook.discountedPrice(20)

let myBook2 = Book(title: "Kiddy2", price: 40.3)
myBook2.discountedPrice(10)


enum Size {
    case SMALL , MEDIUM , LARGE
    
    init () {
        self = .SMALL
    }
}

class StoryBook: Book {
    var size = Size()
    var year : Int
    
    init(title : String , price : Double , year : Int){
        self.year = year
        super.init(title: title, price: price)
    }
    
    //convinience initializer can call only designated initializers in tha same class
    // this can't call the supper init
    convenience init(title: String) {
        self.init(title : title , price: 30.5 , year: 1991 )
    }
    
    override func discountedPrice(percentage: Double = 10) -> Double {
        //return price - ( price * (percentage - 5) / 100)
        return super.discountedPrice(percentage)
    }
}

var kiddy = StoryBook(title: "Kiddy 3", price: 40.3, year: 2015)
kiddy.size = Size.MEDIUM
kiddy.discountedPrice()

var kiddy2 = StoryBook(title: "Harry Potter")

//Computed properties

class Diary: Book {
    var width : Double
    var height : Double
    //computed properties should have var
    var size : Double {
        get{
            return width * height
        }
        set {
            width = sqrt(newValue)
            height = sqrt(newValue)
        }
    }
    
    init(title: String, price: Double , width : Double , height : Double) {
        self.width = width
        self.height = height
        super.init(title: title, price: price)
    }
}

let myDiary = Diary(title: "Daily Diary", price: 30, width: 5, height: 6)
myDiary.size
myDiary.size = 25
myDiary.height = 2
myDiary.size



class TextBook: Book {
    var isSale : Bool?
}

var myTextBook = TextBook(title: "Science Text Book", price: 45)
myTextBook.isSale
myTextBook.isSale = true
myTextBook.isSale

if let bookIsSale = myTextBook.isSale {
    if bookIsSale {
        print("Sale")
    }
}

//class vs Struct & Enum


//reference type
class ProductClass {
    var title : String
    var price : Double
    
    init (title  : String , price : Double ) {
        self.title = title
        self.price = price
    }
}

//value type ( Struct and Enums)
struct ProductStruct {
    var title : String
    var price : Double
}

var iPhone6 = ProductClass(title: "iPhone 6", price: 500)
iPhone6.title
var iPhone6Plus = iPhone6
iPhone6Plus.title = "iPhone 6+"
iPhone6Plus.title
iPhone6.title


var nexes4 = ProductStruct(title: "Nexus4", price: 400)
nexes4.title
var nexes5 = nexes4
nexes5.title = "Nexus5"
nexes5.title
nexes4.title













