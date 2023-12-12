//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 16/11/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack( alignment: .bottom) {
            VStack {
             
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle( cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                  //  .transition(.move(edge: .bottom))
                   // .animation(.spring())
                  //  .opacity(showView ? 1.0 : 0.0)
                  //  .transition(AnyTransition.opacity.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
            
            
        }
        .edgesIgnoringSafeArea(.bottom) // deprecated
       // .ignoresSafeArea()
    }
}

#Preview {
    TransitionBootcamp()
}
