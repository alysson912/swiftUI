//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 20/11/23.
//MARK: Add, edit, move, and delete items in a List in SwiftUI | Bootcamp #31

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] =
    ["Apples", "oranges", "banana", "peach"]
    
    @State var veggies: [String] =
    ["Apples", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach( fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete) // delete cell
                    .onMove(perform: move)
                    .listRowSeparatorTint(Color.yellow)
                    .listRowBackground(Color.cyan)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                            .foregroundStyle(Color.red)
                    }
                    .font(.headline)
                }
                
                Section {
                    ForEach( veggies, id: \.self) {veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .foregroundStyle(Color.cyan)
            .listStyle(InsetGroupedListStyle()) // estilos padroes
            .navigationTitle("Home")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        //    .accentColor(.purple) //  deprecated
        .tint(Gradient(colors: [.red, .orange, .yellow])) // new
    }
    
    var addButton: some View {
        Button("add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    func add() {
        fruits.append("Pear")
    }
}

#Preview {
    ListBootcamp()
}
