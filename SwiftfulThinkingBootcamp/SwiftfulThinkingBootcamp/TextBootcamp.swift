//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson on 12/10/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        
        
//        List {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.body)
//                .fontWeight(.heavy)
//                .strikethrough()
//            
//            Text("Hello, World!")
//                .font(.body)
//                .fontWeight(.ultraLight)
//            
//            
//                 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.body)
//                .bold()
//                .underline(true, color: Color.red)
//                .italic()
//        }
        
        Text("Hello, World!" .uppercased()) // obs: ao definir  tamanho fixo de fonte ele nao seguira o sistema
          //  .font(.system(size: 24, weight: .semibold, design: .monospaced))
            //.baselineOffset(10.0)// espaçamento tentre linhas
           // .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/) // espaçamento entre letras
            .foregroundStyle(.red) // IOS 17
            //.foregroundColor(.yellow) deprecate ios antigos
            .multilineTextAlignment(.leading) // text aligment
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
