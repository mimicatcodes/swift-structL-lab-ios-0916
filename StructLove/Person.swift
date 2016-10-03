//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    var home: Coordinate
    var isHungry: Bool = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        
    }
    
    mutating func eatPizza(from service:PizzaDeliveryService)->Bool {
        var trueOrFalse:Bool
        if isHungry == true && service.isInRange(to: home) {
            isHungry = false
            trueOrFalse = true
            
        } else {
            trueOrFalse = false
        }
        
        return trueOrFalse
    }

}
