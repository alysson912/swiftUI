//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 17/10/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
    
            .fill(
    //MARK: Gradient Linear da esquerda para direita
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [Color.purple,Color.cyan,Color.green]), // quantas cores desejar
//                        startPoint: .topLeading,
//                        endPoint: .bottomTrailing)
//            )
        
    //MARK: Gradient Radial
//        RadialGradient(
//            gradient: Gradient(colors: [Color.purple,Color.cyan,Color.green]),
//            center: .topLeading,
//            startRadius: 5,
//            endRadius: 400)
                
    //MARK: Angular Gradient
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.yellow]),
                    center: .topLeading, //.center,
                    angle: .degrees(20 + 190))
                
        )
            .frame(width: 300, height: 200)
    }
}



#Preview {
    GradientsBootcamp()
}
