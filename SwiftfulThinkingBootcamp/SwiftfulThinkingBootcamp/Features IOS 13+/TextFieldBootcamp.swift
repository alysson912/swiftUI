//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 22/11/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var name: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationStack { // navigationView will be deprecated
            VStack {
                
                TextField("Digite aqui:", text: $name)
                //  .textFieldStyle(RoundedBorderTextFieldStyle()) n customizamos diretamente
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
                    .foregroundStyle(Color.blue)
                    .font(.headline)
                
                Button(action: {
                    if validateTextField()  {
                        saveTextField()
                    }
                    
                    
                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(validateTextField() ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 8.0))
                        .foregroundStyle(Color.white)
                        .font(.headline)
                })
                .disabled(!validateTextField())
                
                ForEach(dataArray,id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField")
        }
    }
    
    func validateTextField() -> Bool{
        if name.count >= 3 {
            return true
        }
        return false
    }
    
    func saveTextField(){
        dataArray.append(name)
        name = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
