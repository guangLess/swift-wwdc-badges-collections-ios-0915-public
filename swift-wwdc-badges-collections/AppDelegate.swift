//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**

        var speakers = [String]()
        
        beforeEach() {
        speakers = [
        "Anita Borg",
        "Alan Kay",
        "Ada Lovelace",
        "Aaron Swartz",
        "Alan Turing",
        "Michael Faraday",
        "Grace Hopper",
        "Charles Babbage"
        

        */
        
        print(badgeForSpeaker("Guang"))
        
        var speakers = [String]()
        speakers = ["Anita Borg",
            "Alan Kay",
            "Ada Lovelace",
            "Aaron Swartz",
            "Alan Turing",
            "Michael Faraday",
            "Grace Hopper",
            "Charles Babbage"]
        
        for var i = 0; i < speakers.count; i++ {
        
        print(badgesForSpeakers(speakers)[i])
        
        }
        
        
        var speakerWithNum: [String : uint] = [
            "Anita Borg" : 201,
            "Alan Kay"	 :202,
            "Ada Lovelace"	 :203,
            "Aaron Swartz"	:215,
            "Alan Turing"	:204,
            "Michael Faraday"	:205,
            "Grace Hopper"	 :230,
            "":224
        ]
        
        
        for eachString in roomAssignmentsForSpeakers(speakerWithNum){
            print(eachString)
        }
        
        
        for eachElement in getRoomCapacitiesForAllSpeakers(){
            print(eachElement)
        }
        
        audienceSizesForSpeakers(speakers)
        // do not alter
        return true  //
    }   //////////////
}       /////////////

