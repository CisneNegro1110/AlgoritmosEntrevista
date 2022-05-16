//
//  ContadorDePalabras.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 15/05/22.
//

import SwiftUI

struct ContadorDePalabras: View {
    @State private var resultado = 0
    var body: some View {
        VStack {
            Button("Next") {
                resultado = remplazar()
            }
            Text("\(resultado)")
        }
    }
    func remplazar() -> Int {
        let texto = "hola  como       te     va"
        var contador = 0
      //  let remplace = texto.replacingOccurrences(of: "   ", with: " ")
        let words = texto.split(separator: " ")
        contador = words.count
        return contador
        
    }
}

struct ContadorDePalabras_Previews: PreviewProvider {
    static var previews: some View {
        ContadorDePalabras()
    }
}
