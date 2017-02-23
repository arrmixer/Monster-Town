//
//  Vampire.swift
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


class Vampire : Monster {
    var moreVampire = [Vampire]()
    func vampireSaying() {
        print("I need Blood!...")
    }
    override func terrorizeTown() {
        if town?.population > 0 {
            let vampire = Vampire(town: myTown, monsterName: "Dracula")
            moreVampire.append(vampire!)
            town?.changePopulation(-1)
            } else {
            print("Nobody is left!")        }
        super.terrorizeTown() // super is the prefix used to call the original
         print("There are \(moreVampire.count + 1) vampires in this town!")
    }
    func changeName(_ name: String, vampireSaying: Bool) {
        self.name = name
        self.vampireSaying()
    }
    
    }
