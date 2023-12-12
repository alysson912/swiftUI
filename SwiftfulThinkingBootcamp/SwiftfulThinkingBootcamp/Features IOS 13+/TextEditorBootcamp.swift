//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 22/11/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditor: String = "TESTANDO TEXT EDITOR"
    @State var saveText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditor)
                    .foregroundStyle(.black)
                    .frame(height: 250)
                    .navigationTitle("Title Navigation")
                    .colorMultiply(.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
                    
                
                
                Button(action: {
                    saveText = textEditor
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 8.0))
                })
                
                Text(saveText)
                Spacer()
            }
        }
        .padding()
        .background(Color.green)
        
    }
}

#Preview {
    TextEditorBootcamp()
}
