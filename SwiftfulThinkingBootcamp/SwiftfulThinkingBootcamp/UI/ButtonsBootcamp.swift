//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 25/10/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    //MARK: @State = fica observando o estado de uma variavel, o que significa que ela pode mudar habilitando a capacidade dela mudar
    
    @State var title = "This is my Title"
    
    var body: some View {
        VStack (spacing: 20){
            Text(self.title)
            
            //MARK: apenas String
            Button("Press me ") {
                self.title = "Button #1"
            }
            .accentColor(.blue)
            
            //MARK: qualquer tipo de rotulo
            Button(action: {
                self.title = "Button #2"
            }, label: {
                Text("Save" .uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                    )
            })
            
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.pink)
                    )
                
            })
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish" .uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}


