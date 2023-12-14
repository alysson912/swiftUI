//
//  AnyLayoutBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 14/12/23.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    
    var body: some View {
        VStack(spacing: 12 ){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ?  AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpah")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpah")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpah")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
                
            
      
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
