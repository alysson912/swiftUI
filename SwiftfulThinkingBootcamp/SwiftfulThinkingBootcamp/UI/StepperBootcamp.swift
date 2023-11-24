//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 23/11/23.
//MARK: Strideable -> valor que sobe e desce, tipo Int

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 18
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        ZStack {
            VStack {
                
                //MARK: EXAMPLE-1 - Default increment or decremente
                Stepper("Stepper-1", value: $stepperValue, in: 0...130)
                Text("Stepper \(stepperValue)")
                
                RoundedRectangle(cornerRadius: 8.0)
                    .frame(width: 100 + widthIncrement, height: 100 + widthIncrement)
                
                
                //MARK: EXAMPLE-1 - Separate increment or decremente
                Stepper("Stepper-2"){
                    // increment
                    incrementWidth(widthSize: 100)
                } onDecrement: {
                    //decrement
                    decrementWidth(widthSize: 100)
                }
                
            }
        }
    }
    func incrementWidth(widthSize: CGFloat){
        withAnimation(.easeInOut) {
            widthIncrement += widthSize
        }
        
    }
    func decrementWidth(widthSize: CGFloat){
        withAnimation(.easeInOut) {
            widthIncrement -= widthSize
        }
    }
}


#Preview {
    StepperBootcamp()
}
