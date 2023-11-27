//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/11/23.
//
//MARK: Quando a Navigation view é iniciada a variavel myText recebe o texto novo

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) {_ in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            // chamando onApper ao inicializar atela porem
            .onAppear(perform: {
                // Estamos atrasando a função em 5 segundos
                DispatchQueue.main.asyncAfter(deadline: .now() + 5)  {
                    myText = "This is the new text"
                }
            })
            .onDisappear(perform: { // usado para encerrar funções
                myText = "Ending Text"
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
