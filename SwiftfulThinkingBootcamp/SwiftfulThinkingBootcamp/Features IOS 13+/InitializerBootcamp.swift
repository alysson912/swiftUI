//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 19/10/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    
    init( count: Int, fruit: Fruit) {
        
        self.count = count
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
            
        } else {
            self.title =  "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        
        VStack(spacing: 12, content: {
            Text("\(count)")
                .underline()
                .font(.largeTitle)
            Text("\(title)")
            
            
        }
        )
        
        .foregroundStyle(Color.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        
        .clipShape(RoundedRectangle(cornerRadius: 10)) // cornerRadius
        
    }
}

#Preview {
    
    HStack {
        InitializerBootcamp(count: 100, fruit: .apple)
        InitializerBootcamp(count: 45, fruit: .orange)
    }
    
}
