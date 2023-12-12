//
//  BackGroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 11/12/23.
//

import SwiftUI

struct BackGroundMaterialsBootcamp: View {
    @State var titleName = "System Materials and Backgrounds"
    let url = URL(string: "https://picsum.photos/1080/1920")
    @State var showView: Bool = false
    @State var titleButton = "UP"
    @Environment(\.colorScheme) var colorScheme
    @State private var isEnabled = false
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Button(titleButton) {
                    showView.toggle()
                    titleButton = "Down"
                }
                .foregroundStyle(colorScheme == .light ? .white : .white)
                .font(.headline)
                .fontWeight(.semibold)
                .padding()
                .padding(.horizontal, 20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
                
                VStack {
                    
                    if showView {
//                        RoundedRectangle(cornerRadius: 4)
//                            .frame(width: 50, height: 4)
//                            .padding()
                        
                        Text(titleName)
                        
                            .frame(height: 350)
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .ignoresSafeArea()
                            .transition(.asymmetric(
                                insertion: .move(edge: .bottom),
                                removal: AnyTransition.opacity.animation(.easeInOut)
                            ))
                            .animation(.easeInOut)
                    }
                }
            }
        }
        .background(
            AsyncImage(url: url) { returnedImage in
                returnedImage
                  //  .resizable()
                    .ignoresSafeArea()
                
                
            } placeholder: {
                ProgressView()
            }
        )
        
    }
}

#Preview {
    BackGroundMaterialsBootcamp()
}
