//
//  Monster.swift
//  MonsterTown
//
//  Created by Angel Rodriguez on 7/9/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation

class Monster {
   static let isTerrifying = true
    
    class var spookyNoise: String {
        return "Grrr"
    }
    
    var town: Town?
    var name: String
    
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool){
            town?.population = newVictimPool
        }
    }
    
    required init?(town: Town?, monsterName: String){
        if monsterName == "" {
            print("Name is empty. Initialization failed!")
            return nil
        }
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        }else {
            print("\(name) hasn't found a town to terrorized yet....")
        }
    }
    
    func changeName(_ name: String){
        self.name = name
        
    }
    

}
