//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .frame(height: 150)
                .frame(width: 150)
            
                .aspectRatio(contentMode: .fill)
                
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
