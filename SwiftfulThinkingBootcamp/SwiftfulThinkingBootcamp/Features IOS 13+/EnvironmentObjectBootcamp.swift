//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 30/11/23.
//

import SwiftUI

// ObservedObject -> Observa se algo na model mudou em seguida atualiza os dados, atualiza os dados ao recarregar a tela.

// StateObject -> Observa se algo na model mudou porem nao atualiza os dados ao recarregar a tela.

//EnvironmentObjeto -> passa os dados para frente


struct EnvironmentModel: Identifiable {
    var id: String = UUID().uuidString // criando ID e convertendo para String
    let name: String?
    let series: Int?
}

class EnvironmentModelViewModel: ObservableObject {
    @Published  var data: [String] = []
    
    func getData(){
        self.data.append(contentsOf: ["Iphone", "Mac", "Ipad"])
    }
    
    init(){
        getData()
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var viewModel = EnvironmentModelViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.data, id: \.self) { item in
                    HStack {
                        NavigationLink {
                            DetailView( selectedItem: item)
                        } label: {
                            HStack {
                                Text(item)
                                
                            }
                        }
                        
                        
                        
                    }
                }
            }
            .navigationTitle("Ios Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
   
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            }
         
        }
    }


struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentModelViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomLeading).ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(viewModel.data, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(Color.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
    //DetailView(selectedItem: "Mac")
  //  FinalView()
}
