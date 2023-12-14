//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 14/12/23.
//MARK: O texto vai se ajustando, caso nao caiba ele usará outro texto

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits(in: .horizontal) {
                Text("This is some text that I would like to display to the user") // tebta usar esse, se nao couber tente o proximo texto
                Text("This is some text that I would like to display") // nao consguiu? va para o proximo
                Text("This is some text ")
            }
        }
        .frame(height: 300)
        .padding(100)
        .font(.headline)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
