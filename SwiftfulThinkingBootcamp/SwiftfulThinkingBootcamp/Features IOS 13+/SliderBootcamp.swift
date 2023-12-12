//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 23/11/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var number: Double = 2.0
    @State var color: Color = .red
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack {
                
                
                //MARK: EXAMPLE 01
                /*  Slider(value: $number ) // 01
                 .tint(Color.yellow)
                 
                 //MARK: EXAMPLE 02
                 Slider(value: $number, in: 1...5 )
                 .tint(Color.yellow)
                 
                
                //MARK: EXAMPLE 03
                // "%.2f" = numero com duas casas decimais
                Text(String(format: "%.2f", number ))
                    .foregroundStyle(Color.white)
                
                Slider(value: $number, in: 1...5, step: 0.5 ) //tem degraus ao deslizar
                    .tint(Color.yellow)
                 */
                
                // "%.2f" = numero com duas casas decimais
                Text(String(format: "%.2f", number ))
                
                Slider(
                    value: $number,
                    in: 1...5) {
                        
                    } minimumValueLabel: {
                        Text("1")
                            .font(.largeTitle)
                            .foregroundStyle(Color.green)
                    } maximumValueLabel: {
                        Text("5")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    }
                    .tint(Color.yellow)
            }
            .padding()
        }
    }
}

#Preview {
    SliderBootcamp()
}
