//
//  Empleado.swift
//  Empresa
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation

class Empleado : Persona {
    
    let pareja : Persona?
    let numeroEmpleado : Int
    
    init(name: String, secondName: String?, pareja: Persona?, numEmpleado: Int) {
        self.pareja = pareja
        self.numeroEmpleado = numEmpleado
        super.init(name: name, secondName: secondName)
    }
    
    func printInformacionEmpleado() {
        if let secName = secondName{
            if let pareja = self.pareja{
                if let nombrePareja = pareja.secondName{
                    print("El empleado \(name) \(secName) tiene a \(pareja.name) \(nombrePareja) con numero de empleado: \(numeroEmpleado)")
                }else {
                    print("El empleado \(name) \(secName) tiene a \(pareja.name) \(self.numeroEmpleado)")
                }
               
            }else{
                print("El empleado \(name) \(secName) no tiene pareja y su numero de empleado es \(numeroEmpleado)")
            }
            
        }else {
            print("Hola mi nombre es \(name) y su numero de empleado es \(numeroEmpleado)")
        }
    }
    
}
