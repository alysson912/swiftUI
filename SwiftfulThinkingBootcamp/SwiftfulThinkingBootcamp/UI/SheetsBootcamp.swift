
//MARK: Navigation  Modal



//MARK: 3 lições Principais

//MARK: 1- precisamos de uma variavel de estado de ligação ( @State) para vinculá-la a tela 02


import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
       
        ZStack {
            Color.green.ignoresSafeArea()
        
            Button("Button") {
                showSheet.toggle()
            }
            .foregroundStyle(Color.green)
            .font(.headline)
            .padding(20)
            .background(Color.white.cornerRadius(10))
            
    
        }
        
        //MARK: MODAL AND FULL MODE
        
        .fullScreenCover(isPresented: $showSheet, content: {
            //MARK: 3 -  NUNCA ADICONAR LOGICA CONDICIONAL AQUI !
            SeconScreen()
        })
     /*   .sheet(isPresented: $showSheet, content: {
           SeconScreen()
        })
       */
       
    }
}

struct SeconScreen: View {
    //MARK: 2- para usar o dismiss precisa adicionar o modo @Environment
    
    //@Environment(\.presentationMode) var presentationMode is deprecated
    @Environment(\.dismiss) var dismiss // atual
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
        
            Button(action: {
        //MARK: 2.1 e em seguida chamar no botao
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                
                  .foregroundStyle(Color.white)
                  .font(.largeTitle)
                  .padding(20)
            })
            
            
            
            
          
          
            
    
        }
     
    }
}

#Preview {
    SheetsBootcamp()
}
