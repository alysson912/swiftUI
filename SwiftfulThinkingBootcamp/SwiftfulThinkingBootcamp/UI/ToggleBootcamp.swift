//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 23/11/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleSwitch: Bool = false
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack{
                HStack {
                    Text("Status:")
                       
                    Text(toggleSwitch ? "Online" : "Off-line")
                    
                }
                .foregroundStyle(Color.white)
                
                
                .font(.title)
             // toggleStyle will be deprecated, .tint is new
                Toggle(
                    isOn: $toggleSwitch,
                    label: {
                    Text("Toggle")
                })
                .tint(Color.yellow) // toggleStyle will be deprecated, .tint is new
                Spacer()
            }
            .padding(.horizontal, 50)
        }
    }
}

#Preview {
    ToggleBootcamp()
}
