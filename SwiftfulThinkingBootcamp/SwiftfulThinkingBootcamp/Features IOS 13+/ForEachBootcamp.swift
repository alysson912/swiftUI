//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 24/10/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    var data: [String] = ["Alysson","Ana","Aline","Gabe"]
    var myString: String  = "Alysson"
    
    var body: some View {
        
//        VStack {
//            ForEach(0..<10) { index in
//                // Text("\(index)")
//                HStack {
//                    Rectangle()
//                        .foregroundStyle(Color.white)
//                        .frame(width: 40, height: 50)
//                    
//                    Text("\(index)")
//                }
//            }
//        }
        
       
        VStack {
            ForEach(data.indices) { index in
                Text(" \(data[index]): \(index)")
            }
        }
        
    }
}

#Preview {
    ForEachBootcamp()
}

