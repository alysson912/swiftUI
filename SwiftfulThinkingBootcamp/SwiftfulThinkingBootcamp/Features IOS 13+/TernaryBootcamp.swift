//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 31/10/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        
        //MARK: Alternativa ao if e else
        
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? " Texto antigo" : "Texto Novo !")
            
            RoundedRectangle(cornerRadius: isStartingState ?  10.0 : 25.0)
            // se isStartingState for verdadeiro mude a cor p/ red caso o contrario mude para azul
                .fill(isStartingState ? Color.red : Color.blue)
                .frame( 
                    width: isStartingState ? 200 : 150,
                    height:isStartingState ? 100 : 200)
            //MARK: podemos usar esse operador ternário em qualquier logica  em qualquer modificador de estado, forma, cor, texto ...
            
        }
    }
}

#Preview {
    TernaryBootcamp()
}
