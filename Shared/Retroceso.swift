//
//  Retroceso.swift
//  AlgoritmosEntrevista
//
//  Created by Jesús Francisco Leyva Juárez on 12/05/22.
//

import SwiftUI

struct Retroceso: View {
    
    let word = "Astronauta"
    var data = [1,2,3,4,5,6,7,8,9]
   @State var result = 0
    var body: some View {
        let reversedWord = String(word.reversed())
        let dataReverse: [Int] = data.reversed()
        
        VStack {
            Text(reversedWord)
            
            ForEach(word.reversed(), id: \.self) { d in
                Text("\(d.description)")
            }
           
            Text("\(dataReverse.description)")
            
            ForEach(dataReverse, id: \.self) { d in
                    Text("\(d)")
            }
        }
        
    }
}

struct Retroceso_Previews: PreviewProvider {
    static var previews: some View {
        Retroceso()
    }
}
