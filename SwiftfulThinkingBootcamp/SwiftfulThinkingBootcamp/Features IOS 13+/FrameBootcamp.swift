//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/10/23.
//

import SwiftUI


//MARK: Obs: TODO ELEMENTO PASSUI UM FRAME (QUADRO) TRANSPARENTE (ex: backgrond amarelo do textfield), para não se perder é interresante adicionar uma cor

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .foregroundStyle(.secondary)
//            .background(Color.yellow)
//         //   .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight:35,  alignment: .center )
//        
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .background(Color.red)
        
        //MARK: EXEMPLOS DE VARIOS FRAMES + ALINHAMENTO
        //MARK: OBS? NA DUVIDA POE UM BACKGROUND COLOR 
        .background(Color.red)
        .frame(height: 100, alignment: .center)
        .background(Color.orange)
        .frame(width: 150)
        .background(Color.purple)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.pink)
        .frame(height: 400)
        .background(Color.green)
        .frame(maxHeight: .infinity, alignment:  .top)
        .background(Color.yellow)
        
    }
}

#Preview {
    FrameBootcamp()
}
