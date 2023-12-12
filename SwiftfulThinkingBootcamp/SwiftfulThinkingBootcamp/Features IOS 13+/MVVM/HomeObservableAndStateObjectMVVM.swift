//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 27/11/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString // criando ID e convertendo para String
    let name: String?
    let count: Int?
}

class FruitViewModel: ObservableObject {
    // Published - avisa que algo mudou na model e atualiza/publicar atualizações dos dados  para viewModel
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 12)
        let fruit3 = FruitModel(name: "Watermelon", count: 132)
        
        self.isLoading = true
        // simulando tela de load como se tivesse fazendo requisição
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
            
        }
        
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct HomeObservableAndStateObjectMVVM: View {
    //MARK: StateObject é igual = a ObservableObject, exceto pelo fato q ele nao reinderiza novamente quando a tela recarrega, ele se mantem, ou seja nao será atualizado, diferente do ObservableObject // Se por alguma razao a view atualizar o StateObject nao irá atualizar!
    //MARK: PARA QUEM ESTA INICIANDO, CRIA A VARIAVEL COM  @StateObject
    // @ObservedObject -> USE THIS FOR SUB VIEWS
    @StateObject  private var viewModel = FruitViewModel() // assim q iniciar ele vai chamar o init com getFruits dentro
    
    
    
    var body: some View {
        NavigationStack {
            List {
                
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    
                    ForEach(viewModel.fruitArray){ fruit in
                        HStack {
                            Text("\(fruit.count ?? 0)")
                                .foregroundStyle(.red)
                            Text(fruit.name ?? "")
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: viewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            /*    .onAppear { viewModel.getFruits()} */
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    HStack {
                        NavigationLink {
                            RandomScreen( viewModel: viewModel) // passando dados p/ frente
                        } label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }

                       
                    }
                }
            }
        }
    }
    
}

struct RandomScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            VStack {
                ForEach(viewModel.fruitArray) { fruit in
                    Text(fruit.name ?? "")
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    HomeObservableAndStateObjectMVVM()
}
