//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 28/10/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea(.all)
            //MARK: Criando cavarias subViews reaproveitando a estrutura e passando parametros
            ScrollView (.horizontal){
                HStack {
    //MARK: Extract SubView utilizar quando ouver mudanca de estado de valores
                    MyItem(title: "Apples", count: 15, color: Color.red)
                    MyItem(title: "Bananas", count: 5, color: Color.yellow)
                    MyItem(title: "Melancia", count: 22, color: Color.green)
                    MyItem(title: "Uva", count: 2, color: Color.purple)
                    MyItem(title: "Laranjas", count: 15, color: Color.orange)
                    
                }
            }
        }
    }
}



#Preview {
    ExtractSubviewsBootcamp()
}
//MARK: SubView
struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .frame(width: 100, height: 100)
        .padding()
        .background(color)
        .foregroundStyle(Color.white)
        .shadow(radius: 10)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
}
