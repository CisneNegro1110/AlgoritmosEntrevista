//
//  RemoveDuplicateLetters.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 07/06/22.
//

import SwiftUI

struct RemoveDuplicateLetters: View {
    
    var body: some View {
        let resultado = removeDupmlicate("Hello, World!")
        Text(resultado)
    }
    func removeDupmlicate(_ value: String) -> String {
        var result: [Character] = []
        for letter in value {
            if !result.contains(letter) { //Si mi resultado no contiene la letra
                result.append(letter)    // Agregamos la letra
            }
        }
        return String(result)
    }
}

struct RemoveDuplicateLetters_Previews: PreviewProvider {
    static var previews: some View {
        RemoveDuplicateLetters()
    }
}
