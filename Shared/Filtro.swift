//
//  Filtro.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 15/05/22.
//

import SwiftUI

struct Filtro: View {
    @State private var words:[String] = []
    var body: some View {
        VStack {
            ForEach(words, id: \.self) { d in
                Text("\(d)")
            }
        }
    }
    func filtro() -> [String] {
        let words = ["hello", "world", "this", "is", "a", "list", "of", "strings"]
        let filtered = words.filter { word in
          return word.count >= 5
        }
        return filtered
    }
}

struct Filtro_Previews: PreviewProvider {
    static var previews: some View {
        Filtro()
    }
}
