//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello Group")
            Group {
                Text("Hello Group")
                Text("Hello Group")
            }
            .foregroundStyle(.blue)
            .font(.largeTitle)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}
//MARK: podemos usar modificadores nos itens que estao contidos no Group


#Preview {
    GroupBootcamp()
}
