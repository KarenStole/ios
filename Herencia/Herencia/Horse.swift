//
//  Horse.swift
//  Herencia
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation
class Horse: Animal {
    var namberOfLegs: Int
    
    init(name: String, namberOfLegs: Int) {
        self.namberOfLegs = namberOfLegs
        super.init(name: name)
    }

}
