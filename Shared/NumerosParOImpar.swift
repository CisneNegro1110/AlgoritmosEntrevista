//
//  NumerosParOImpar.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 10/05/22.
//

import SwiftUI

struct NumerosParOImpar: View {
    @ObservedObject var vm = viewModel()
    @State private var numero: Int?
    @State private var resultado = ""
    var body: some View {
        VStack {
            TextField("Numero a verificar", value: $numero, format: .number)
            Button("Verificar") {
                resultado = vm.verificar(numero: numero ?? 0)
            }
            Text(resultado)
        }
    }
}

struct NumerosParOImpar_Previews: PreviewProvider {
    static var previews: some View {
        NumerosParOImpar()
    }
}

class viewModel: ObservableObject {
    func verificar(numero: Int) -> String {
        if numero % 2 == 0 {
            return "El numero \(numero) es Par"
        }
        return "Es numero \(numero) Impar"
    }
}
