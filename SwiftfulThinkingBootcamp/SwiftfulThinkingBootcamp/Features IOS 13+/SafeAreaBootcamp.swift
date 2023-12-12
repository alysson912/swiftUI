//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 25/10/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        //MARK: Por padrao todos os objetos se limitarao a safeArea (por padrao)
        
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        //.background(Color.blue)
        .background(
            Color.red
                //.edgesIgnoringSafeArea(.top)// old, deprecated
                .ignoresSafeArea(.all)
        )
    
    
    //        ZStack {
    //            // background
    //            Color.yellow
    //        //forenground
    //
    //            VStack {
    //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    //                   Spacer()
    //            }
    //            .frame(maxWidth: .infinity, maxHeight: .infinity)
    //
    //            // .ignoresSafeArea(.all) // atual
    //        } .background(Color.cyan)
    //
    
    
}
}

#Preview {
    SafeAreaBootcamp()
}
