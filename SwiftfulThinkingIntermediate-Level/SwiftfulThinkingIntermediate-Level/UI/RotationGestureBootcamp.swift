//
//  RotationGestureBootcamp.swift
//  SwiftfulThinkingIntermediate-Level
//
//  Created by Alysson Menezes on 16/01/24.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
      
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(50)
            .background(Color.blue.clipShape(RoundedRectangle(cornerRadius: 8.0)))
            .rotationEffect(angle)
            .gesture(
                RotateGesture()
                    .onChanged{ value in
                        angle = value.rotation
                    }
                    .onEnded({ value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    })
            )
    }
}

#Preview {
    RotationGestureBootcamp()
}
