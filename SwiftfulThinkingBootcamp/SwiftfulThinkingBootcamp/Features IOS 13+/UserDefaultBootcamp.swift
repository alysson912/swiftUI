//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 30/11/23.
//

import SwiftUI

struct UserDefaultBootcamp: View {
    @State var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name Here")
            if let name = currentUserName {
                Text(name)
            }

            Button("save".uppercased() ) {
                let name: String = "Alysson"
                
               currentUserName = name
                UserDefaults.standard.setValue(name, forKey: "name")
            }
            .onAppear(){
                currentUserName = UserDefaults.standard.string(forKey: "name")
            }
        }
    }
}

#Preview {
    UserDefaultBootcamp()
}
