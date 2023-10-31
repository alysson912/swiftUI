//
//  BidingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 28/10/23.
//

import SwiftUI

struct BidingBootcamp: View {
    
    @State var backgroundColor: Color = Color.yellow
    @State var title: String = "Titulo"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            // ligando a variavel com a subView
            VStack {
                Text(title)
                    .foregroundStyle(Color.white)
                    // dando acesso para a variavel alterar dentro da classe filha
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                
            }
 // Ao iniciar a cor de fundo inicia com amarelo ( cor da classe pai), ao clicar no botao a cor do fundo e botao muda para vermelho (definido na view Filha) sem puxar dadodos da classe pai.
            
        }
    }
}

#Preview {
    BidingBootcamp()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.purple
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.pink
            buttonColor = Color.cyan
            title = "new Title" // definindo novo titulo sem a referencia da classe pai
        }, label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius:10))
                .shadow(radius: 10)
            
        })
    }
}
