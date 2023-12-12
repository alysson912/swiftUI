//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 11/12/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        //MARK: NOTIFICAÇÕES EM TABVIEW
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Olá")
//                }
//                .badge("New")
//            
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Olá")
//                }
//                .badge(15)
//            
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Olá")
//                }
//                .badge(0) // se for zero nao aparece notificação
//        }
        //MARK: NOTIFICAÇÕES EM LISTAS
        List {
            Text("Olá Mundo !")
                .badge("New Itens")
            Text("Olá Mundo !")
                .badge(10)
            Text("Olá Mundo !")
            Text("Olá Mundo !")
        }
    }
}


#Preview {
    BadgesBootcamp()
}
