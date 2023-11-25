//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 21/11/23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var backGroundColor: Color = Color.white
    
    var body: some View {
        
        ZStack {
            backGroundColor.ignoresSafeArea()
            VStack {
                
                //MARK: example 1 basic alert with title and message
                Button("Exemplo 1") {
                    showAlert1.toggle()
                }
                .alert("Atenção, error", isPresented: $showAlert1) {
                    // action
                } message: {
                    Text("Test message Alert")
                }
                
            
                
                //MARK: example 2  alert with title, message and two buttons
                Button("Exemplo 2") {
                    showAlert2.toggle()
                }
                
                    .alert("Title", isPresented:  $showAlert2, actions: {
                        Button("Delete", role: .destructive, action: {
                            //action button
                        })
                    }, message: {
                        Text("Message")
                    })
                // obs: destructiveButton have red color
                
                //MARK: example 3  alert with title, message and two customs buttons
                
                Button("Exemplo 3") {
                    showAlert3.toggle()
                }
                .alert("Title", isPresented: $showAlert3, actions: {
                    // 1
                    Button("Nope", role: .cancel, action: {})
                    Button("Destructive", role: .destructive, action: {})
                }, message: {
                    getAlert(text: "Message Text Test")
                })
            }
        }
    }
    func getAlert(text: String) -> AnyView {
        return AnyView(Text(text))
    }
}

#Preview {
    AlertBootcamp()
}
