//
//  AnimationsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 31/10/23.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimated: Bool = false
    @State var buttonColor: Color = Color.cyan
    
    var body: some View {
        
        ZStack {
            Color(Color.white).ignoresSafeArea()
            VStack {
                
                Spacer()
                RoundedRectangle( cornerRadius: isAnimated ? 50.0 : 10.0)
                    .fill(isAnimated ?  Color.purple : Color.cyan)
                    .frame(
                        width: isAnimated ? 100 : 300,
                        height: isAnimated ? 100 : 300)
                    .rotationEffect(Angle(degrees:  isAnimated ? 360 : 0))
                    .offset(y: isAnimated ? 300 : 0)
                
                Spacer()
                
                Button("Button") {
                    withAnimation(
                        Animation.default.repeatCount(5, autoreverses: true)) {
                            
                            //     delay(2.0)
                            //.repeatCount(5, autoreverses: true)
                            isAnimated.toggle()
                        }
                }
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius:10))
                .shadow(radius: 10)
                
                
            }
        }
    }
}

#Preview {
    AnimationsBootcamp()
}
