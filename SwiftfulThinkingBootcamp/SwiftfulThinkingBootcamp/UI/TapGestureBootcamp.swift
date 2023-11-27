//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/11/23.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.green : Color.red)
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                //.onTapGesture {isSelected.toggle()}
                .onTapGesture(count: 3, perform: {isSelected.toggle()}) // tap 3x for peform
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TapGestureBootcamp()
}
