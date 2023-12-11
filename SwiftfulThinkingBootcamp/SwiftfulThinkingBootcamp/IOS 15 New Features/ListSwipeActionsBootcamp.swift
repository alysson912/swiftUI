//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 11/12/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["Apples", "oranges", "banana", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                
                // ações ao deslizar da direita para esquerda
                // allowsFullSwipe = true  => ativa ação deslizando ate o outro lado
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Salvar") {
                            
                        }
                        .tint(.green)
                        
                        Button("Deletar") {
                          
                        }
                        .tint(.red)
                        
                        Button("Arquivar") {
                            
                        }
                        .tint(.blue)
                    }
                
                // ações ao deslizar da esquerda para direita
                // allowsFullSwipe = false  => limita o slider
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.pink)
                      
                    }
                
            }
         //   .onDelete(perform: delete)
        }
    }
    func delete(index: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
