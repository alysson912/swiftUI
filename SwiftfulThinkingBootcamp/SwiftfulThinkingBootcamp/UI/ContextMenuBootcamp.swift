//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 22/11/23.
//MARK:  3D Touch

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State  var backgroundColor: Color = .white
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10.0) {
                HStack {
                    Image(systemName: "house.fill")
                        .font(.title)
                    Text("Swift UI")
                        .font(.headline)
                }
              
                Text("How to use Context Menu")
                    .font(.subheadline)
            }
            .padding()
            .foregroundStyle(Color.white)
            .background(Color.blue) .clipShape(RoundedRectangle(cornerRadius:10))
            .contextMenu(ContextMenu(menuItems: {
                Button("Purple") {
                    backgroundColor = .purple
                }
                Button("Cyan") {
                    backgroundColor = .cyan
                }
                Button("Yellow") {
                    backgroundColor = .yellow
                }
        }))
        }
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
