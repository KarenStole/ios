//
//  main.swift
//  Herencia
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation

print("Hello, World!")

let animal1 = Animal(name: "animalito")
let bird = Bird(name: "Juan", namberOdWings: 3)
let horse = Horse(name: "Pablo", namberOfLegs: 4)

var animals: [Animal] = [animal1, bird, horse]

for name in animals{
    print(name.sayHi())
    if let bird = name as? Bird{
        print("y soy un pajaro con \(bird.namberOdWings) alas.")
    }
}

print(animal1.name)


var list : [Int] = []

list.append(3)
