//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State var text: String = ""
    @State var paths: [String] = []
    
    var body: some View {
        
        NavigationStack(path: $paths) {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    
                    //                    TextField("Placeholder", text: $text)
                    //                        .frame(height: 45)
                    //                        .frame(maxWidth: .infinity)
                    //                        .background(Color.white)
                    //                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    //                    
                    //                    Text("Olá!")
                    //                        .foregroundStyle(Color.white)
                    
                    ForEach(0..<40){_ in
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.yellow)
                            .frame(width: 250, height: 150)
                        
                    }
                    
                }
                
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.white)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "moon.fill")
                        .foregroundStyle(.gray)
                }
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                }
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "gear")
                        .foregroundStyle(.pink)
                }
                
                ToolbarItem(placement: .principal) {
                    Image(systemName: "cloud.fill")
                        .foregroundStyle(.cyan)
                }
            }
            //MARK:  custom Styles
            //.navigationBarBackButtonHidden() will be deprecated
            // IOS 16+//    .toolbar(.hidden, for: .navigationBar)
            //    .toolbarBackground(.hidden, for: .navigationBar)
            //.toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen1") {
                    paths.append("Screen1")
                }
                
                Button("Screen2") {
                    paths.append("Screen2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("NewScreen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
