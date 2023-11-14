//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 31/10/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            // time animation
             //   .animation(Animation.linear(duration: timing))
            //   .animation(.spring()) //deprecated
             //  .animation(.spring(), value: timing) // recomended
            
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.2,
                    blendDuration: 1.0))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // time animation
//              //  .animation(Animation.default)
//                .animation(Animation.easeIn(duration: timing))
//                
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // time animation
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // time animation
//                .animation(Animation.easeOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//            // time animation
//                .animation(Animation.default)
            
            Button("Button") {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
