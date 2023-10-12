//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson on 12/10/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
             //   Color.primary
            //    Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
           //     Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
           // .shadow(radius: 10
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: 10, y: 20)
            
    }
}

#Preview {
    ColorsBootcamp()
       // .preferredColorScheme(.dark)
}
