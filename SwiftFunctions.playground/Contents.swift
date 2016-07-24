//: Playground - noun: a place where people can play

import UIKit

func findArea( height :Double , width : Double) ->Double{
                    return height * width
}

print(findArea(2, width: 3))

func findEvenNumbers (number : Int) -> (Bool, String) {
    if number%2 == 0 {
        return (true,"\(number) is an even number.")
    }else {
        return (false,"\(number) is not an even number.")
    }
}

let (isEven , description ) = findEvenNumbers(2)

print(description)


//optionals

func findMembers ( memberId memberId : String) -> String? {
    let members = ["1" : "Frank" , "2" : "Amith" , "3" : "Thadeesha" ,"4" : "Achila"]
    
    for (id,name) in members {
        if id == memberId
        {
            return "Member id : \(id) name : \(name) is a member of VWEBU"
        }
    }
    
    return nil
}

print(findMembers(memberId: "2"))

if let data = findMembers(memberId: "2"){
    print(data)
}

//optional chaning

func findTeamMembersAge ( memberName memberName : String) -> String? {
    let members = ["Frank" :"25", "Amith" :"24", "Thadeesha" :"21", "Achila" : "20'"]
    
    for (name,age) in members {
        if name == memberName
        {
            return "\(age)"
        }
    }
    
    return nil
}

if let age = findTeamMembersAge(memberName : "Frank"){
    if let ageInt = Int(age){
     print(ageInt - 1)
    }
}

func isDivisible (numberOne numberOne : Int ,  numberTwo : Int ) -> Bool? {
    if numberOne % numberTwo == 0 {
        return true
    }
    return nil
}

if let checkDivisability = isDivisible(numberOne: 4, numberTwo: 3){
    print(checkDivisability)
    if checkDivisability {
        print("Divisible")
    }
}else {
    print("Not devisable")
}