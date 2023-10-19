//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 18/10/23.
//

import SwiftUI

//MARK: Spacer empurra um objeto dinamicamente caso chegue ao limite ele simplemente zera o spacer

struct SpacerBootcamp: View {
    var body: some View {
        //        HStack (spacing: 0){
        //
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(Color.purple)
        //                .frame(width: 50, height: 50)
        //
        //               Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //        }
        
        VStack {
            HStack (spacing: 0 ){
                
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.gray)
                
                Image(systemName: "gear")
                
            }
            .background(Color.red)
            .font(.title) // mesma fonte para todos objetos dentro deHStack
            .padding(.horizontal)
            .background(Color.green)
            
            Spacer()
                .frame(width: 10)
                .background(Color.yellow)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                
        }
        .background(Color.cyan)
    }
}

#Preview {
    SpacerBootcamp()
}
