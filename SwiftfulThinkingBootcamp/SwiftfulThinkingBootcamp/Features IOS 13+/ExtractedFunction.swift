//
//  ExtractedFunction.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/10/23.
//

import SwiftUI

struct ExtractedFunction: View {
    
    @State var  backGroundColor: Color = Color.yellow
    
    var body: some View {
    
        ZStack {
    //background
            backGroundColor.ignoresSafeArea(.all)
            
    // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
    //MARK: Extract SubView utilizar quando NÃO ouver mudanca de estado de valores
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPress()
            }, label: {
                Text("Press-me")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
    
    func buttonPress(){
        backGroundColor = Color.pink
    }
}

#Preview {
    ExtractedFunction()
}
