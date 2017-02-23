//
//  Mayor.swift
//  MonsterTown
//
//  Created by Angel Rodriguez on 7/21/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation

struct  Mayor {
    
    fileprivate var anxietyLevel : Int = 0
    
    
    mutating func increaseAnxiety() {
        self.anxietyLevel += 10
    }

    
    mutating func majorMessage(_ decrease: Int) {
        print("I'm deeply saddened to hear about this latest tradegy I promise that my office is loking into the nature of this rash of viloence.")
        if decrease == 10 {
            self.anxietyLevel += 1
            
          
        }
    }
    
}
