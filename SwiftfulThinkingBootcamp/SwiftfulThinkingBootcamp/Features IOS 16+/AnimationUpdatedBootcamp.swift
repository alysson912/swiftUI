//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    
    @State var animate1: Bool = false
    @State var animate2: Bool = false
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            VStack(spacing: 40) {
                
                Group{
                    
                    Button("Action 1") {
                        animate1.toggle()
                    }
                    
                    Button("Action 2") {
                        animate2.toggle()
                    }
                    
                }
                .font(.largeTitle)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundStyle(.pink)
                .padding(.horizontal)
                .padding()
                
                
                ZStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
            }
        }
        //MARK: Animação só será aplicada quando value mudar, ou se qualquer coisa na view mudar
        .animation(.spring(), value: animate1)
        .animation(.linear(duration: 5), value: animate2)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
