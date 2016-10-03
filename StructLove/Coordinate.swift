//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate{
    var latitude:Double
    var longitude:Double
    var isInNorthernHemisphere: Bool {
        get {
            if latitude > 0 {
                return true
            }
            return false
        }
    }
    var isInSouthernHemisphere: Bool{
        get {
            if latitude < 0 {
                return true
            }
            return false
        }
    }

    var isInWesternHemisphere: Bool{
        get {
            if longitude > 0 {
                return true
            }
            return false
        }
    }

    
    var isInEasternHemisphere: Bool{
        get {
            if longitude < 0 {
                return true
            }
            return false
        }
    }

    
    
    init(latitude:Double, longitude:Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func distance(to coordinate:Coordinate)->Double{
        
  return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians-coordinate.longitude.radians)) * 6371000 / 1000
    }


}
extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
