//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 18/10/23.
//

import SwiftUI

//MARK: VStacks -> Vertical
//MARK: HStacks -> Horizontal
//MARK: ZStacks -> zIndex ( de tras p/ frente)

struct StacksBootcamp: View {
    var body: some View {
        
        //        // Horizontal
        //        HStack (alignment: .top, spacing: nil, content: {
        //            // alignment: .top ou botton
        //            // propriedade da Vstack ex: espaçamento e outros
        //            // espaçamento padrao = 8
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 200, height: 200)
        //
        //            Rectangle()
        //                .fill(Color.yellow)
        //                .frame(width: 150, height: 150)
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 100, height: 100)
        //        })
        
        //
        //        VStack (alignment: .leading, spacing: 0, content: {
        //  alignment: .leading ou trailing
        //
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 200, height: 200)
        //
        //            Rectangle()
        //                .fill(Color.yellow)
        //                .frame(width: 150, height: 150)
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 100, height: 100)
        //
        //        }) // Vertical
        
        
        
        
        //        ZStack(alignment: .bottomTrailing, content:{
        //          // empilhando itens
        //
        //                        Rectangle()
        //                            .fill(Color.red)
        //                            .frame(width: 300, height: 300)
        //
        //                        Rectangle()
        //                            .fill(Color.yellow)
        //                            .frame(width: 250, height: 250)
        //                        Rectangle()
        //                            .fill(Color.green)
        //                            .frame(width: 200, height: 200)
        //        })
        
        //MARK: OBS: PODEMOS EMPILHAR TODAS ELAS JUNTAS AO MESMO TEMPO !
        //MARK: VStacks -> Vertical
        //MARK: HStacks -> Horizontal
        //MARK: ZStacks -> zIndex ( de tras p/ frente)
        // EX:
        
//        ZStack(alignment: .top, content: {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 300, height: 500)
//            VStack(alignment: .leading, spacing: 30 ,content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//                HStack (alignment: .bottom, spacing: 25 ){
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 100, height: 100)
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(Color.gray)
//                        .frame(width: 40, height: 40)
//                }
//                .background(Color.cyan)
//            })
//            .background(Color.black)
//        })
        
         //MARK: Real ex
//        
//        VStack(alignment: .center, spacing: 20, content: {
//            
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            
//            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
//                .font(.caption)
//                .foregroundStyle(.gray)
//            
//        })
        
        //MARK: Shape ex
        
        VStack(spacing: 100, content: {
            
            ZStack{
                
                Circle()
                    .fill(Color.pink)
                    .frame(width: 150, height: 150)
                
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Text("2")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                    
                    Circle()
                        .fill(Color.pink)
                        .frame(width: 150, height: 150)
                    
                )
        })
    }
}

#Preview {
    StacksBootcamp()
}
