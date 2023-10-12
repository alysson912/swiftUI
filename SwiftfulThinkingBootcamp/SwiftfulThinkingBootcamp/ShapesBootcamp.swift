//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson on 12/10/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
      //  Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
        
           // .fill(Color.blue)
            //.foregroundColor(.pink) // deprecate
            //.stroke()// borda da forma
           // .stroke(Color.blue, lineWidth:  20) // cor da linha
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
           // .trim(from: 0.2, to: 1.0) // corte
          //  .stroke(Color.purple, lineWidth:  50)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
