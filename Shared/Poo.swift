//
//  Poo.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 11/05/22.
//

import SwiftUI

struct Poo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Poo_Previews: PreviewProvider {
    static var previews: some View {
        Poo()
    }
}
//Protocoloes o interfaces, definen lo que va a llevar una clase o estructura, ya sean funciones o atributos
protocol Fly {
    func volar() -> String
}
protocol Terrestre {
    func correr() -> String
}
protocol Acuatico {
    var mar: String { get set }
    func nadar() -> String
}

// Clase padre
class Animal {
    let nombre: String
    let edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre =  nombre
        self.edad = edad
    }
    func obtenerDescripcion() -> String {
        return "Nombre: \(nombre), Edad: \(edad)"
    }
}

//Clase hija que hereda los atributos de su clase padre y del protocolo correspondiente
final class Gato: Animal, Terrestre {
    let vidas: Int
    init(nombre: String, edad: Int, vidas: Int) {
        self.vidas = vidas
        super.init(nombre: nombre, edad: edad)
    }
    func descripcion() -> String {
        return "\(obtenerDescripcion()), Vidas: \(vidas)"
    }
    func correr() -> String {
        return "Corre Como el viento"
    }
}

//Clase hija que hereda los atributos de su clase padre y del protocolo correspondiente
final class Aguila: Animal, Fly {
    let color: String
    init(nombre: String, edad: Int, color: String) {
        self.color = color
         super.init(nombre: nombre, edad: edad)
    }
    func volar() -> String {
        return "Vuela Alto"
    }
}

//Clase hija que hereda los atributos de su clase padre y del protocolo correspondiente
final class Tiburon: Animal, Acuatico {
    var mar: String
    init(nombre: String, edad: Int, mar: String) {
        self.mar = mar
         super.init(nombre: nombre, edad: edad)
    }
    func nadar() -> String {
        return "A nadar"
    }
}

