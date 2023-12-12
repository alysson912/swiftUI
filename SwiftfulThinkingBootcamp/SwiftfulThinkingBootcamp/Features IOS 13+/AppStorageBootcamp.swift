//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 30/11/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
   
    @AppStorage ("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name Here")
            if let name = currentUserName {
                Text(name)
            }

            Button("save".uppercased() ) {
                let name: String = "Ana"
                
               currentUserName = name
              
            }
           
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
