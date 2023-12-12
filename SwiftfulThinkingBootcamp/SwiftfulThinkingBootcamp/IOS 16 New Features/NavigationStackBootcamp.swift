//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//MARK: vantagem da Navigation stack é de carregar somente as views necessarios, evitando de carregar todo mundo junto, evitando a desaceleração do app, carregando as views de forma preguiçosa.

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = ["Apple", "Oranges","Banana"]
    @State private var  stackPath: [String] = []
    
    var body: some View {
        
        NavigationStack(path: $stackPath){
            
            ScrollView {
                VStack (spacing: 40){
                    
                    // avansando 3 telas ao msm tempo
                    Button("Super segue!") {
                        stackPath.append(contentsOf: [
                            "Coconuts", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        
                        NavigationLink(value: x) {
                            Text("Screen: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("NavigationStack ios 16")
            .navigationDestination(for: Int.self) { value in
                MysSecondScreen(value: value)
            }
            
            .navigationDestination(for: String.self) { value in
                Text("Another Screen: \(value)")
            }
        }
    }
}

struct MysSecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init Screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
