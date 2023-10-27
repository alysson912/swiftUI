//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/10/23.
//

import SwiftUI

struct StateBootcamp: View {
    //MARK: Wrapper propriedade chamada @State, ele diz a view para observar o estado da variavel no caso cor e q ela pode mudar e caso o estado da variavel mude talvez tenhamos que atualizar a view
    @State var backgroundColor: Color = Color.yellow
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background coloor 
           backgroundColor
                .ignoresSafeArea(.all)
            
            VStack (spacing: 20){
                Text(myTitle)
                    .font(.title)
                
                Text(String(count))
                    .font(.headline)
                    .underline()
                
                HStack (spacing: 20){
                    
                    Button("BUTTON 1") {
                        backgroundColor = Color.pink
                        myTitle = "Botton 1 was pressed"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = Color.cyan
                        myTitle = "Botton 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
