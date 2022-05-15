//
//  Concurrencia.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 13/05/22.
//

import SwiftUI

struct Concurrencia: View {
    @State private var palabra = "Hola perro, sigue avanzando y no te rindas jamas"
    @State private var caracter = ""
    @State private var resultado2 = 0
    var body: some View {
        VStack {
            TextField("Letra a buscar", text: $caracter)
            TextField("Oracion", text: $palabra)
            Button("Verificar") {
                let caracter2 = Character(caracter)
                self.resultado2 = CountConcurrencia(of: caracter2, in: palabra)
            }
            Text("La letra \(caracter) se encuentra \(resultado2) veces")
        }
    }
    func CountConcurrencia(of:Character, in text:String) -> Int {
        var entero = 0
        for i in text {
            if i == of {
                entero += 1
            }
        }
        return entero
    }
}


struct Concurrencia_Previews: PreviewProvider {
    static var previews: some View {
        Concurrencia()
    }
}
