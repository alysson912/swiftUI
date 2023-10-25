//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 24/10/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        
        //MARK: SAMPLE ALL COLORS
        //        ScrollView {
        //            VStack {
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: .infinity, height: 125)
        //
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: .infinity, height: 125)
        //                Rectangle()
        //                    .fill(Color.orange)
        //                    .frame(width: .infinity, height: 125)
        //                Rectangle()
        //                    .fill(Color.purple)
        //                    .frame(width: .infinity, height: 125)
        //                Rectangle()
        //                    .fill(Color.pink)
        //                    .frame(width: .infinity, height: 125)
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: .infinity, height: 125)
        //                Rectangle()
        //                    .fill(Color.cyan)
        //                    .frame(width: .infinity, height: 125)
        //                Rectangle()
        //                    .fill(Color.yellow)
        //                    .frame(width: .infinity, height: 125)
        //
        //            }
        //        }
        
        //MARK: SAMPLE WITH FOREACH
        //vertical
        //        ScrollView(.vertical, showsIndicators: false, content: {
        //            VStack {
        //                ForEach(0..<60){ index in
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                        .frame(width: .infinity, height: 125)
        //                }
        //            }
        //        })
        //       // horizontal
        //        ScrollView(.horizontal, showsIndicators: false, content: {
        //            HStack {
        //                ForEach(0..<60){ index in
        //                    Rectangle()
        //                        .fill(Color.cyan)
        //                        .frame(width: 125, height: 125)
        //                }
        //            }
        //        })
        //MARK: New Sample
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10){index in
                    ScrollView( .horizontal, showsIndicators: false, content: {
                        LazyHStack(content: {
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        })
                    })
                }
            }
        }
        
        //MARK: Obs: o conteudo da pilha serao carregados assim que a tela for criada
        // bom em dados Mockados
        // o correto é usa LazyVStack: cria so aquela linha ou item  necessario (economizando dados)
        
    }
}


#Preview {
    ScrollViewBootcamp()
}
