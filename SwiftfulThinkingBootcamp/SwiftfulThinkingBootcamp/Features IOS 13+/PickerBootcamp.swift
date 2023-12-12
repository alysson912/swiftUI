//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 23/11/23.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = ""
    
    var body: some View {
                ZStack {
                    Color.white.ignoresSafeArea()
                    VStack {
        
                        HStack{
                            Text("Age:")
                            Text(selection)
                        }
        
                        Picker(selection: $selection, label: Text("Picker")) {
                            ForEach(18..<100) { number in
                                Text("\(number)")
                                    .font(.headline)
                                    .foregroundStyle(.red)
                                    .tag("\(number)")
                            }
                        }
                        //.background(Color.gray.opacity(0.3))
                        //.pickerStyle(WheelPickerStyle())
                      //  .pickerStyle(.menu)
                        
                    }
        
        
                }
      
 
    }
}

#Preview {
    PickerBootcamp()
}
