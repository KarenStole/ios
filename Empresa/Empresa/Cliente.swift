//
//  Cliente.swift
//  Empresa
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation

class Cliente : Persona {
    
    let direccion : String
    
    init(name: String, secondName: String?, direccion : String) {
        self.direccion = direccion
        super.init(name: name, secondName: secondName)
    }
    
    func printInformacionCliente() {
        if let secName = secondName{
            print("El empleado \(name) \(secName) no tiene pareja y mi direccion es \(direccion)")
            
        }else {
            print("Hola mi nombre es \(name) y su numero de empleado es \(direccion)")
        }
    }
}
