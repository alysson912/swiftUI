//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 22/11/23.
//MARK:  3D Touch

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State  var backgroundColor: Color = .white
    @State  var backgroundColorMenu: Color = .blue
    
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
            .background(backgroundColorMenu) .clipShape(RoundedRectangle(cornerRadius:10))
            .contextMenu(ContextMenu(menuItems: {
                Button(action: {
                    backgroundColor = .red
                    backgroundColorMenu = .green
                }, label: {
                    Label("Red", systemImage: "iphone.gen1")
                })
                Button(action: {
                    backgroundColor = .pink
                    backgroundColorMenu = .cyan
                }, label: {
                    Label("Pink", systemImage: "gamecontroller")
                })
                Button(action: {
                    backgroundColor = .cyan
                    backgroundColorMenu = .yellow
                }, label: {
                    Label("Cyan", systemImage: "apple.logo")
                })
            }))
        }
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
