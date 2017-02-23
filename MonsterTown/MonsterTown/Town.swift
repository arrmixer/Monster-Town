//
//  Town.swift
//  MonsterTown
//
//  Created by Angel Rodriguez on 7/9/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation

struct Town {
    let region : String
    var mayor = Mayor()
    var population : Int {
        didSet(oldPopulation){
            if oldPopulation > population {
            print("The population has changed to \(population) from \(oldPopulation)..look out!!")
            mayor.majorMessage(oldPopulation - population)
            }}
    }
    
    var numberOfStopLights : Int
    init? (region: String, population: Int, stoplights: Int) {
        if population <= 0 {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStopLights = stoplights
    }
    
    init?(population: Int, stoplights: Int){
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.small
            case 10001...100000:
                return Size.medium
            default:
                return Size.large
            }

        }
        
    }
    
    
    
    func printTownDescription() {
        print("Population: \(population) number of stoplights: \(numberOfStopLights); region: \(region)")
    }
    // structs and enums are value types which means you need the mutating keyword to be able to change values
    // inside the struct or enum
    mutating func changePopulation(_ amount: Int){
        if (population + amount >= 0) {
        
            population += amount}else {
            population = 0
        }
    }
}

