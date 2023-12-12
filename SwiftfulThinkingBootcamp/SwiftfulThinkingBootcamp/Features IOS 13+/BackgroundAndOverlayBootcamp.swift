//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/10/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        
        //        Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(// sobrePosicao
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 50, height: 50),
        //                alignment: .topLeading
        //            )
        //            .background(
        //                Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 150, height: 150),
        //                alignment: .bottomTrailing
        //            )
        
        Image(systemName: "heart.fill")
            .foregroundStyle(Color.white)
            .font( .system(size: 200)) // tamanho da imagem
            .shadow(color: .black, radius: 10, x: 10, y: 0)
            .background( // atrás dela tera o circulo
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.purple]),
                                       startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                                       endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    )
                    .frame(width: 350, height: 350)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("5")
                                   // .font(.system(size: 50))
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                                    
                            )
                            .shadow(color: .black, radius: 10, x: 5, y: 5)
                        ,alignment: .bottomTrailing
                    )
            )
        
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
