//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 25/11/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    @State var data: [String] = ["Apple", "Oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .toolbar{
                ToolbarItemGroup( placement: .topBarTrailing) {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                }
            }
            .alert("Atenção, error", isPresented: $showAlert) {
                // action
                
            } message: {
                getAlert(text: "Texto da mensagem")
            }
        }
        
    }
    
    func getAlert(text: String) -> AnyView {
        return AnyView(Text(text))
    }
  
}
        
        #Preview {
            DocumentationBootcamp()
        }
