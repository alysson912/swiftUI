//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 14/12/23.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedBackOptions: [String] = [ "Very good", "Average", "Very bad"]
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Button("Provide feedback") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottomTrailing) ,content: {
                    ScrollView{
                        VStack (alignment: .leading, spacing: 12, content: {
                            ForEach(feedBackOptions, id: \.self) { option in
                                Button(option){
                                    
                                }
                                
                                if option != feedBackOptions.last {
                                    Divider()
                                }
                            }
                        })
                        .padding()
                    }
                    
                    .presentationCompactAdaptation(.popover)
                })
                
            }
            
            /*  .popover(isPresented: $showPopover, content: {
             
             })
             */
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
