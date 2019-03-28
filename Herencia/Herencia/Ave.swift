//
//  Ave.swift
//  Herencia
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation
class Bird: Animal {
    var namberOdWings: Int
    
    init(name: String, namberOdWings: Int) {
        self.namberOdWings = namberOdWings
        super.init(name: name)
    }
    
}
