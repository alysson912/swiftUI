//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/11/23.
// MARK: NAVIGATION BAR HIDDEN IS DEPRECATED USE -> .toolbar(.hidden, for: .navigationBar)

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink( "ir -> Tela 02!",destination: Tela02())
                
                Spacer()
                Text("Hello, World!")
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            }
            .navigationTitle("Tela 01")
            //  .navigationBarTitleDisplayMode(.inline) // mantem o titulo fixo la em cima
            // .navigationBarHidden(true) deprecated
            //      .toolbar(.hidden, for: .navigationBar)
            //            .toolbar{
            //                ToolbarItemGroup( placement: .topBarLeading) {
            //                    Button("BackButton") {
            //
            //                    }
            //                }
            //            } // BackButton na tabBar atualizado !
            
        }
    }
}

struct Tela02: View {
    // escondemos a navigation bar da tela02, enão podemos criar um botao com sheet
    @Environment(\.dismiss) var dismiss // atual
    
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
                .navigationTitle("Tela 02 Azul !")
            
            
            
            VStack {
                Button( "Custom Back Button") {
                    dismiss()
                }
                .foregroundStyle(Color.white)
                
                NavigationLink("ir -> Tela 03", destination: Tela03() )
                //   .toolbar(.hidden, for: .navigationBar)
            }
        }
    }
}

struct Tela03: View {
    @Environment(\.dismiss) var dismiss // atual
    
    var body: some View {
        NavigationView{
            Color.purple.ignoresSafeArea()
                .navigationTitle("Tela 03")
                .toolbar{
                    ToolbarItemGroup( placement: .topBarLeading) {
                        HStack {
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "swift")
                                
                            }
                            
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "person.fill")
                                
                            }                        }
                    }
                }
        }
        
    }
}

#Preview {
    NavigationViewBootcamp()
}
