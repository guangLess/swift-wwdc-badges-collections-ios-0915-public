//  Sandbox.swift

import Foundation

/**
 
 Hello, my name is <name>.
 
 */


func badgeForSpeaker(speakerName:String) ->String{
    return "hello, my name is \(speakerName)"
}

func badgesForSpeakers(speakerNames:[String]) -> [String]{
    
    var greetNames:[String] = []
    
    for eachName in speakerNames {
        if (eachName.isEmpty) {
        }else {
            greetNames.append ( badgeForSpeaker(eachName) )
        }
    }
    
    return greetNames
}


//var speakerWithNum = [String : uint]() // string might be nill


func roomAssignmentsForSpeakers(speakerNames : [String : uint]) -> [String] {
    
    let speakersAll:[String] = Array(speakerNames.keys)
    //let roomsAll:[uint] = Array(speakerNames.values)
    var appendString : String = ""
    var greetNameWithNum:[String] = []
    
    for eachName in speakersAll {
        if (eachName.isEmpty) {
            appendString = "\(speakerNames[eachName])  has not been assigned to a room."
        }else if ((speakerNames[eachName]) == nil){
            appendString =  "\(eachName) has not been assigned to a room.)"
        }
        else {
            appendString =  "\(eachName) will be speaking in Room \(speakerNames[eachName]!)."
        }
        greetNameWithNum.append(appendString)
    }
    return greetNameWithNum
}

/*
Use the two dictionaries you've created to find the room capacity for each speaker. Save this information in a new dictionary with each speaker's name as the key, and the audience size as the value. Return this dictionary at the end of the method.
*/

let speakerWithNum: [String : Int] = [
    "Anita Borg" : 201,
    "Alan Kay"	 :202,
    "Ada Lovelace"	 :203,
    "Aaron Swartz"	:215,
    "Alan Turing"	:204,
    "Michael Faraday"	:205,
    "Grace Hopper"	 :230,
    "":224
]

let roomWithCap:[Int : Int] = [
    201:40,
    202 : 50,
    203	: 70,
    204	: 20,
    215	: 30,
    230	: 80,
    240	: 35,
    260	: 60 ]


func getRoomCapacitiesForAllSpeakers() ->[String : Int] {
    var diction  = [String:Int]?()
    
    for eachName in speakerWithNum.keys{
        
        if (!eachName.isEmpty){
            let roomNumber : Int = speakerWithNum[eachName]!
            
            if roomWithCap.keys.contains(roomNumber){
                let roomCap : Int = roomWithCap[roomNumber]!
                diction![eachName] = roomCap
            }
        } else {
            diction = nil
        }
    }
    return diction!
}
//Room information not found for <speaker>. with getRoomCapacitiesForAllSpeakers()

func audienceSizesForSpeakers(speakers: [String]) -> [String] {
    
    // if exist does -> <speaker> can speak to up to <capacity> people.
    // else Room information not found for <speaker>.
    
    var returnString : String
    var returnArray : [String] = []
    
    let assignedRoomWithSpeaker = getRoomCapacitiesForAllSpeakers()
    
    for eachSpeaker in speakers{
        
        if (( assignedRoomWithSpeaker[eachSpeaker]) != nil){
            returnString = "\(eachSpeaker) can speak to up to \(assignedRoomWithSpeaker[eachSpeaker]) people"
        }else {
            returnString = "Room information not found for \(eachSpeaker)."
        }
        returnArray.append(returnString)
        print(returnString)
    }
    
    return returnArray
}

