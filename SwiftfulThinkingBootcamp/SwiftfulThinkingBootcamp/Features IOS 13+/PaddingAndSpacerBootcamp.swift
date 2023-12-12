//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 18/10/23.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            Text("Olá Mundo !")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("adding is a SwiftUI developer's best friend. In this video we learn how to use the .padding() modifier to align and offset views in our iOS application. Padding is often used to add space between objects or to add a margin between an object and the edge of the device")
                
                
            
        }
        .padding()
        .padding(.vertical, 10) //MARK: CUSTOM PADDING
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0,
                    y: 10
                )
        )
    }
        
}

#Preview {
    PaddingAndSpacerBootcamp()
}
