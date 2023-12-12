//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/11/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil  // pode ou nao ser nullo
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Text("Here we are preticing safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
            //MARK: DO NOT USER ! EVER !!!!!,  DO NOT FORCE UNWRAP VALUES
            
      //          Text(displayText)
         //           .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    func loadData(){
        
        if let userID = currentUserID { // se houver um ID, executa o restante da func
            // como userID é nulo ele nunca executará o restante do codigo
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID"
        }
    }
    
    //MARK: Sao funcs iguais, a primeira com if let e a segunda com guard Let
    
    func loadData2(){
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
    
}

#Preview {
    IfLetGuardBootcamp()
}
