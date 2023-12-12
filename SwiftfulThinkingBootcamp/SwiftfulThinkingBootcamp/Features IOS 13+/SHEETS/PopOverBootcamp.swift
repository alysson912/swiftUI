//
//  PopOverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/11/23.
//

// MARK: Sheets + animations + Transitions

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            VStack {
                Spacer()
                Button("Button") {
                    showNewScreen.toggle()
                }
                .foregroundStyle(Color.green)
                .font(.headline)
                .padding(20)
                .background(Color.white.cornerRadius(10))
                
            }
            // MARK: Metodo 1 = Sheet
            // .sheet(isPresented: $showNewScreen, content: {  MODAL COVER
            //    .fullScreenCover(isPresented: $showNewScreen, content: {
            //    NewScreen()
            //  })
            
            
            // MARK: Metodo 2 = Transition USAR TRANSITIONS !! POIS TEM MAIS PERSONALIZAÇÕES 
//            ZStack {
//                if showNewScreen {
//                    NewScreen( showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
     //   MARK: Metodo 3 = ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
                
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismiss // atual
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.cyan.ignoresSafeArea()
            
            VStack {
                Button(action: {
                    //MARK: 2.1 e em seguida chamar no botao
                    //   dismiss()
                    showNewScreen.toggle()
                    
                }, label: {
                    Image(systemName: "xmark")
                    
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .padding(20)
                })
                Spacer()
            }
        }
    }
}

#Preview {
    PopOverBootcamp()
    // NewScreen()
}
