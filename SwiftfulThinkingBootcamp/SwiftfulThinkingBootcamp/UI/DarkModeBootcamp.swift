//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 24/11/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20){
                    Text("This Text is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This Text is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This Text is Black")
                        .foregroundStyle(.black)
                    Text("This Text is White")
                        .foregroundStyle(.white)
                    Text("This Text is RED")
                        .foregroundStyle(.red)
                    Text("This Text is Adaptive")
                        .foregroundStyle(Color("AdaptiveColor")) // custom color with inspector
                    Text("This Color is locally adaptive !")
                        .foregroundStyle(colorScheme == .light ? .cyan : .pink)
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Button")
                    })
                    
                    .backgroundStyle(.red)
                    .foregroundStyle(.primary)
                
                }
            }
            .navigationTitle("Dark Mode ")
        }
    }
}

#Preview {
    DarkModeBootcamp()
    
}
