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
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
                Text(titleName)
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
                    AsyncImage(url: url) { returnedImage in
                        returnedImage
                            .resizable()
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
