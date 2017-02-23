//
//  main.swift
//  MonsterTown
//
//  Created by Angel Rodriguez on 7/9/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation

//print("Hello, World!")

var myTown = Town(population: 0, stoplights: 6)
let ts = myTown?.townSize
print(ts)

myTown?.printTownDescription()
myTown?.changePopulation(10000000)
print("Size: \(myTown?.townSize); population: \(myTown?.population)")

var fredTheZombie : Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")

fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()
fredTheZombie?.changeName("Fred the Zombie", walksWithLimp: false)
fredTheZombie?.terrorizeTown()
var convenientZombie = Zombie(limp: true, fallingApart: false)
fredTheZombie?.terrorizeTown()
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printTownDescription()

let dracula = Vampire(town: myTown, monsterName: "Dracula")
dracula.changeName("Dracula", vampireSaying: true)
dracula?.terrorizeTown()
dracula?.terrorizeTown()
dracula?.town?.printTownDescription()
print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)


fredTheZombie = nil




















