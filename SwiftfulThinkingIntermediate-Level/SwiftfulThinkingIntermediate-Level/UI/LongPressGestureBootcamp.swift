//
//  LongPressGestureBootcamp.swift
//  SwiftfulThinkingIntermediate-Level
//
//  Created by Alysson Menezes on 16/01/24.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
//        Text(isComplete ? "Completed" : "Not Completed")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? Color.green : Color.red)
//            .foregroundStyle(Color.white)
//            .font(.title)
//            .clipShape(RoundedRectangle(cornerRadius: 8.0))
//         //   .onTapGesture { // toque rapido
//        //        isComplete.toggle()
//       //      }
//        
//            .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 1) {
//            // toque longo
//            // maximumDistance: 1 = clicar e nao mexer o dedo, 1 a 50
//                isComplete.toggle()
//            }
        
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            HStack {
                Text("Click Here")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { (isPressing) in
                        // start of press -> min duration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isComplete = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {
                                    withAnimation(.easeInOut){
                                        isComplete = false
                                    }
                                }
                            }
                        }
                    } perform: {
                        withAnimation(.easeInOut){
                            isSuccess =  true
                        }
                    }

                
                Text("Reset")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
                    .onTapGesture {
                        isComplete = false
                        isSuccess = false
                    }
            }
            VStack {
                Text("Hold on button!")
                    
                
                    
            }
        }
    }
}

#Preview {
    LongPressGestureBootcamp()
}
