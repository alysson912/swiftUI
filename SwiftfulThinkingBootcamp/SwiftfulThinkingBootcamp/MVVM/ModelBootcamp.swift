//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/11/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString // id aleatorio para pesquisa
    let displayName, userName: String?
    let followerCount: Int?
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Alysson", userName: "Cross912", followerCount: 100, isVerified: true),
        UserModel(displayName: "Ana", userName: "anaFull92", followerCount: 23, isVerified: false),
        UserModel(displayName: "Levi", userName: "Lev´s", followerCount: 123, isVerified: false),
        UserModel(displayName: "Criss", userName: "Lasdv´s", followerCount: 12233, isVerified: true),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach(users) { user in
                    HStack (spacing: 15.0){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack (alignment: .leading){
                            Text(user.displayName ?? "")
                                .font(.headline)
                            Text(user.userName ?? "")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(.blue)
                        }
                        VStack {
                            Text(String(user.followerCount ?? 0))
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
