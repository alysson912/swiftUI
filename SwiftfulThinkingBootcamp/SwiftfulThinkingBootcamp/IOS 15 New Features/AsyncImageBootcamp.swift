//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 11/12/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    //  baixando imagem com tamanho 500 x 500
    let url = URL(string: "https://picsum.photos/1080/1920")
    
    var body: some View {
        // manipulando imagem para ter tamanho, escala e outros atributos customizados
        // MARK: EXEMPLO 1
        //        AsyncImage(url: url) { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .clipShape(RoundedRectangle(cornerRadius: 20))
        //                .frame(width: 400, height: 400)
        //
        //        } placeholder: {
        //            ProgressView()
        //        }
        // MARK: EXEMPLO 2 - Casso de Empty
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
                
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 650, height: 650)
                
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            @unknown default:
                Image(systemName: "camera.metering.unknown")
            }
        }
        
    }
}

#Preview {
    AsyncImageBootcamp()
}
