//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List (0..<10){_ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Inserts")
            //            .overlay(
            //                Text("Olá")
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.yellow)
            //                , alignment: .bottom
            //            )
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Olá")
                   // .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
