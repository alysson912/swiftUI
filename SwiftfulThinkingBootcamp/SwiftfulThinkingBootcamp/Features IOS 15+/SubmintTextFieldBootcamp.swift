//
//  SubmintTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//

import SwiftUI

struct SubmintTextFieldBootcamp: View {
    
    @State var  text: String = ""
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            VStack {
                TextField("Placeholder", text: $text)
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .submitLabel(.continue) // muda o nome do botao Return do teclado
                    .onSubmit {
                        print("Something to the console")
                }
            }
            .padding()
        }
    }
}

#Preview {
    SubmintTextFieldBootcamp()
}
