//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 25/10/23.
//MARK:  para evitar de baixar muitos dados ao mesmo tempo, e tornar o app pesado, usamos Lazy para baixar somente os dados que serão exibidos na tela (naquele momento), se isso for feito o app carregarar todos os dados de um json de uma vez por exemplo. usando o lazy ele baixa somente o enecessario.

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        //MARK: GridItem(.fixed(50), spacing: nil, alignment: nil),
        //MARK: GridItem(.flexible(), spacing: nil, alignment: nil) // redmensiona qualquer tamanho
        //MARK: GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(Color.cyan)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],// fixa sectionLabel ao scrollar
                content: {
                    
                    Section {
                        ForEach(0..<20){ index in
                            Rectangle()
                                .frame( height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.title)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                    }
                    
                    Section {
                        ForEach(0..<20){ index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .padding()
                    }
                    
                }
            )
            // LazyVGrid(columns: columns) {}
        }
    }
}

#Preview {
    GridBootcamp()
}
