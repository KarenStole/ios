//
//  Animal.swift
//  Herencia
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation

class Animal {
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("hola mi nombre es \(name)")
    }
}
