//
//  NumerosPrimos.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 10/05/22.
//

import SwiftUI

struct NumerosPrimos: View {
    @ObservedObject var vm = viewModelNumeroPrimos()
    @State private var numero1: Int?
    @State private var resultado = ""
    var body: some View {
        VStack {
            TextField("Numero a verificar", value: $numero1, format: .number)
            Button("Verificar") {
            resultado = vm.verificar(numero: numero1 ?? 0)
            }
            Text(resultado)
        }
    }
}

struct NumerosPrimos_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NumerosPrimos()
        }
    }
}

class viewModelNumeroPrimos: ObservableObject {
    func verificar(numero: Int) -> String {
        for i in 2..<numero {
            if numero % i == 0 {
                return "El numero \(numero) no es un numero primo"
            }
        }
        return "El numero \(numero) es un numero primo"
    }
}
