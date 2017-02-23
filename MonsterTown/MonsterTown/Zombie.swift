//
//  Zombie.swift
//  MonsterTown
//
//  Created by Angel Rodriguez on 7/9/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class Zombie : Monster {
    override class var spookyNoise: String {
        return "Brains...."
    }
    var mayor = Mayor()
    
    var walksWithLimp : Bool
    
    fileprivate(set) var isFallingApart : Bool
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String){
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init?(limp: Bool, fallingApart: Bool){
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee")
        }
    }
    
    required init?(town: Town?, monsterName: String) {
            walksWithLimp = false
            isFallingApart = false
            super.init(town: town, monsterName: monsterName)
    }
    
    
    //use override to use same function but define with Zombie instead of Monster... Zombie has it's own version
    override func terrorizeTown() {
        if town?.population > 0 && !isFallingApart {
            town?.changePopulation(-10) 
            
        } else {
        print("Nobody is left!")        }
        super.terrorizeTown() // super is the prefix used to call the original

    }
    
   func changeName(_ name: String, walksWithLimp: Bool){
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
}


