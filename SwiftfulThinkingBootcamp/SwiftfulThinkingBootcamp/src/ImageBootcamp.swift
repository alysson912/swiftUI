//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/10/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
            
        Image("controle") // background transparente
            .renderingMode(.template) // habilitando alteracao de cor da imagem obs: antes do resizable
            .resizable() // habilitando proporcao
          .scaledToFit()
           // .frame(width: 350, height: 350) // tamanho fixo
            .foregroundStyle(.green)
        // .aspectRatio(contentMode: .fill)
        // .clipped()
        //.cornerRadius(30) // deprecated
            .clipShape(RoundedRectangle(cornerRadius: 15)) // cornerRadius atualizado
            //.clipShape(Circle()) cortando a imagem em circulo
        
    }
}

#Preview {
    ImageBootcamp()
}
