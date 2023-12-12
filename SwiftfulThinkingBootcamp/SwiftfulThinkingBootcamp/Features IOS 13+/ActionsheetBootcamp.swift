//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 22/11/23.
//MARK: ActionsheetBootcamp WILL BE DEPRECATED USE confirmationDialog

import SwiftUI

struct ActionsheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State private var backgroundColor: Color = .white
    
    var body: some View {
        backgroundColor.ignoresSafeArea()
        
        Button("Click-me") {
            showActionSheet.toggle()
        }
        .confirmationDialog("", isPresented: $showActionSheet) {
            
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Yellow") { backgroundColor = .yellow }
            Button("Remove color", role: .destructive) { backgroundColor = .clear }
            Button("Cancel", role: .cancel) { }
            
        } message: {
            Text("Title Dialog")
        }
        
        
        
    }
    
    
}

#Preview {
    ActionsheetBootcamp()
}
