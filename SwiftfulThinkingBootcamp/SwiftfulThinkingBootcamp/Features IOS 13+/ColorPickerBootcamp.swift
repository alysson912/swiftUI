//
//  SwiftUIView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 23/11/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backGround: Color = .green
    
    
    var body: some View {
        ZStack {
            backGround.ignoresSafeArea()
            
            VStack {
                ColorPicker("Title", selection: $backGround)
            }
            
            .padding()
            .font(.headline)
            .background(Color.black)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8.0))
            .padding(50)
        }
        
    }
}

#Preview {
    ColorPickerBootcamp()
}
