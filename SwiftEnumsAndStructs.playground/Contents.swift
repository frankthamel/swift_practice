//: Playground - noun: a place where people can play

import UIKit

enum Day : Int{
    case Monday = 1,
     Tuesday = 2,
     Wednesday = 3,
     Thursday = 4,
     Friday = 5,
     Saturday = 6,
     Sunday = 7
    
    init() {
        self = .Monday
    }
    
    func daysTillWeekend() -> Int {
        return Day.Saturday.rawValue - self.rawValue
    }
}

func weekdayOrWeekend (day : Day) {
    switch day {
    case .Saturday , .Sunday:
        print("Weekend :)")
    default:
        print("week day :(")
    }
}

weekdayOrWeekend(Day.Sunday)
weekdayOrWeekend(Day.Monday)

//func daysTillWeekend(day : Day ) -> Int {
//    return Day.Saturday.rawValue - day.rawValue
//}

//daysTillWeekend(Day.Monday)
//
//if let firstDayOfWeek = Day(rawValue: 1){
//    daysTillWeekend(firstDayOfWeek)
//}


//Associated values

enum Status {
    case Success (String)
    case Falier (String)
}

let downloadStatus = Status.Falier("Network connection unavailable.")

switch downloadStatus{
case .Success(let  success) :
    print(success)
case .Falier (let falier):
    print(falier)
}


// enum methods
var today = Day.Monday
today.daysTillWeekend()

today = .Thursday
today.daysTillWeekend()

//enum init method
today = Day()
today.rawValue
today.daysTillWeekend()

