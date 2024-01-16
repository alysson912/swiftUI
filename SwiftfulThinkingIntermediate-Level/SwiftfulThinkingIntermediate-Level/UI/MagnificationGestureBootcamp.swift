//
//  MagnificationGestureBootcamp.swift
//  SwiftfulThinkingIntermediate-Level
//
//  Created by Alysson Menezes on 16/01/24.
 

import SwiftUI

struct MagnificationGestureBootcamp: View {
    @State var currentZoom  = 0.0
    @State var totalZoom = 1.0
    
    var body: some View {
        //MARK: MOVIMENTO DE PINCA, obs: so funciona no emulador
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.title)
//            .padding(40)
//            .background(Color.red.clipShape(RoundedRectangle(cornerRadius: 8.0)))
//            .scaleEffect(1.0 + currentAmount + lastAmount)
//            .gesture(
//                MagnificationGesture() // will be deprecated
//                    .onChanged{ value in
//                        currentAmount = value - 1
//                    }
//               
//                    .onEnded({ value in
//                        lastAmount += currentAmount  // desativa  animação ao soltar a pinça
//                        currentAmount = 0
//                    })
//            )
        VStack (spacing: 10){
            HStack {
                Circle().frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                Spacer()
                    Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Rectangle().frame(height: 300)
                .scaleEffect(1 + currentZoom)
                .gesture(
                    MagnifyGesture() //MARK: Atual !!!!
                        .onChanged{ value in
                            currentZoom = value.magnification - 1
                        }
                        .onEnded { value in
                            withAnimation {
                                currentZoom = 0
                            }
                                            
                                         }
                )
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
               
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
        
    }
}

#Preview {
    MagnificationGestureBootcamp()
}
