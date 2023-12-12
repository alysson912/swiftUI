//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 12/12/23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        Button(action: {
            showSheet.toggle()
        }, label: {
            Text("Button Title")
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                
        })
        .padding()
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        
        .sheet(isPresented: $showSheet) {
            MyNextView02()
            //MARK: O QUAL PRA CIMA A MODAL SUBIRÁ
            //.presentationDetents([]) vazio = padrao
            //.presentationDetents([.large])
            //.presentationDetents([.medium])
            // podemos arrastar ainda mais para cima com:
            //.presentationDetents([.medium, .large])
            //.presentationDragIndicator(.hidden)// indicador
            //.interactiveDismissDisabled() // nao deixa baixar a sheet
            
            //MARK: subindo sheet baseado na porcentagem (tamanho da tela)
                .presentationDetents([.fraction(0.1), .medium, .large]) // 0.0..1.0
            
        }
        .onAppear {
            showSheet = true
        }
    }
}


struct MyNextView02:  View {
    var body: some View {
        
        ZStack {
            Color.pink.ignoresSafeArea()
            
            Text("Olá Mundo !")
                .foregroundStyle(Color.white)
        }
        
        
    }
}


#Preview {
    ResizableSheetBootcamp()
}
