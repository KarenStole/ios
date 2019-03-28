//
//  main.swift
//  Empresa
//
//  Created by Administrador on 21/3/19.
//  Copyright © 2019 UCUDAL. All rights reserved.
//

import Foundation

print("Hello, World!")

let pareja1 : Persona = Persona(name: "Roberto", secondName: nil)
let pareja2 : Persona = Persona(name: "Ana", secondName: "Clara")

let empleado1 : Empleado = Empleado(name: "Juan", secondName: nil, pareja: pareja2, numEmpleado: 1)
let empleado2 : Empleado = Empleado(name: "Juan", secondName: "Mateo", pareja: nil, numEmpleado: 1)
let empleado3 : Empleado = Empleado(name: "Laura", secondName: "Andrea", pareja: pareja1, numEmpleado: 1)

let cliente1 : Cliente = Cliente(name: "Juan", secondName: "Alberto", direccion: "Juan carlos gomez 123")
let cliente2 : Cliente = Cliente(name: "Juan", secondName: "Antonio", direccion: "Juan carlos gomez 321")

var empresa : [Persona] = [empleado1, empleado2, empleado3, cliente1, cliente2]

for personas in empresa{
    
    if let persona = personas as? Empleado{
        persona.printInformacionEmpleado()
    }
    if let persona = personas as? Cliente{
        persona.printInformacionCliente()
    }
}
