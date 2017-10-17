//
//  BirdsData.swift
//  The Birder's App
//
//  Created by Kalvakota,Vaishnavi on 10/16/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit


class Bird:Equatable,CustomStringConvertible{
    
    var name:String!
    var latinName:String!
    var location:CLLocationCoordinate2D!
    var dateFirstSighted:DateComponents!
    var noOfSightings:Int!
    var image:UIImage!
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:DateComponents, noOfSightings:Int, image:UIImage){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.noOfSightings = noOfSightings
        self.image = image
    }
    
    func updateNumSightings(sightings:Int){
        noOfSightings! = noOfSightings+1
    }
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        return ""
    }
    
}

struct County{
    var name:String
    var birds:[Bird]
}

struct State{
    static var counties:[County] = [County(name: "Audrain County", birds: [Bird(name: "Rock pigeon", latinName: "Columba livia ", location: CLLocationCoordinate2D(latitude: 87.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2012, month: 06, day:15, hour: 8, minute: 35), noOfSightings: 67, image: #imageLiteral(resourceName: "Rock pigeon")), Bird(name: "Inca dove", latinName: "Columbina inca", location: CLLocationCoordinate2D(latitude: 78.0,longitude:95.0), dateFirstSighted: DateComponents(year: 1908, month: 09, day:13, hour: 16, minute: 04), noOfSightings: 55, image: #imageLiteral(resourceName: "Inca dove")), Bird(name: "Eastern whip-poor-will", latinName: "Antrostomus vociferus", location: CLLocationCoordinate2D(latitude: 48.0,longitude: 59.0), dateFirstSighted: DateComponents(year: 2012, month: 12, day:8, hour: 10, minute: 13), noOfSightings: 15, image: #imageLiteral(resourceName: "Eastern whip-poor-will"))]),County(name: "St.Francois", birds: [Bird(name: "Ross's goose", latinName: "Anser rossii", location: CLLocationCoordinate2D(latitude: 97.0,longitude: 405.0), dateFirstSighted: DateComponents(year: 2002, month: 06, day:15, hour: 8, minute: 35), noOfSightings: 67, image: #imageLiteral(resourceName: "ross's goose")), Bird(name: "Trumpeter swan", latinName: "Cygnus buccinator", location: CLLocationCoordinate2D(latitude: 98.0,longitude: 85.0), dateFirstSighted: DateComponents(year: 1998, month: 09, day:13, hour: 16, minute: 04), noOfSightings: 55, image: #imageLiteral(resourceName: "Trumpeter swan")), Bird(name: "Greater scaup", latinName: "Aythya marila", location: CLLocationCoordinate2D(latitude: 88.0,longitude: 55.0), dateFirstSighted: DateComponents(year: 2001, month: 12, day:8, hour: 10, minute: 13), noOfSightings: 15, image: #imageLiteral(resourceName: "Greater scaup"))]), County(name: "Greene County",  birds: [Bird(name: "Bufflehead", latinName: "Bucephala albeola", location: CLLocationCoordinate2D(latitude: 29.8,longitude: 81.97), dateFirstSighted: DateComponents(year: 2005, month: 05, day:15, hour: 19, minute: 35), noOfSightings: 100, image:#imageLiteral(resourceName: "Bufflehead")), Bird(name: "Smew", latinName: "Mergellus albellus", location: CLLocationCoordinate2D(latitude: 34.7,longitude: 65.09), dateFirstSighted: DateComponents(year: 1999, month: 08, day:26, hour: 02, minute: 40), noOfSightings: 200, image:#imageLiteral(resourceName: "Smew")), Bird(name: "Common merganser", latinName: "Mergus merganser", location: CLLocationCoordinate2D(latitude: 70.06,longitude: 94.10), dateFirstSighted: DateComponents(year: 1900, month: 08, day:25, hour: 05, minute: 30), noOfSightings: 52, image: #imageLiteral(resourceName: "Common merganser"))]), County(name: "Cass County",  birds: [Bird(name: "Ring-necked duck", latinName: "Aythya collaris", location: CLLocationCoordinate2D(latitude: 87.8,longitude: 90.13), dateFirstSighted: DateComponents(year: 2003, month: 01, day:04, hour: 12, minute: 04), noOfSightings: 250, image: #imageLiteral(resourceName: "Ring-necked duck")), Bird(name: "Common nighthawk", latinName: "Chordeiles minor", location: CLLocationCoordinate2D(latitude: 45.90,longitude: 23.56), dateFirstSighted: DateComponents(year: 1994, month: 11, day:10, hour: 09, minute: 15), noOfSightings: 190, image:  #imageLiteral(resourceName: "Common nighthawk")), Bird(name: "Yellow-billed cuckoo", latinName: "Coccyzus americanus", location: CLLocationCoordinate2D(latitude: 25.90,longitude: 78.9), dateFirstSighted: DateComponents(year: 2006, month: 11, day:17, hour: 16, minute: 30), noOfSightings: 15, image: #imageLiteral(resourceName: "Yellow-billed cuckoo"))])]
}
