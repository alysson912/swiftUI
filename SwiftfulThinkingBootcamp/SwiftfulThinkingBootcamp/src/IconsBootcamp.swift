//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/10/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "cloud.rainbow.half")
            .resizable()// habilita proportcao
        // .aspectRatio(contentMode: .fit)
            .scaledToFit()// define tipo proportcao
        // .font(.caption) // tamanhos padroes
        //     .font(.system(size: 450)) // tamanho fixo
        //.foregroundColor(.yellow) // deprecated
        //    .foregroundStyle(.red) // cor
        // outro metodo para definir tamanho
            .symbolRenderingMode(.multicolor)// padrao de cor apple (do icone)
            .frame(width: 300, height: 300)
            .clipped() // corta a imagem na proporcao do quadro
        
    }
}

#Preview {
    IconsBootcamp()
}
