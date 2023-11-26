//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 25/11/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    //MARK: PROPERTIES
    
    @State var data: [String] = ["Apple", "Oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    //MARK: BODY
    var body: some View { // comand + option -> ou <-
        NavigationStack { // start Nav
            ZStack {
                // background
                Color.cyan.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .toolbar{
                        ToolbarItemGroup( placement: .topBarTrailing) {
                            Button("Alert") {
                                showAlert.toggle()
                            }
                        }
                    }
                    .alert("Atenção", isPresented: $showAlert) {
                        // action
                        
                        
                    } message: {
                        getAlert(text: "Texto da mensagem")
                    }
            }// End ZStack
        }// End Nav
    }
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView {// start ScrollView
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }// END - ScrollView
    }
    
    //MARK: FUNCTIONS
    
    /// Get an alert with a specified title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT ha a message.
    ///
    ///```
    ///getAlert( text: "HI") -> Alert(title: Text("HI"))
    ///```
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: return an alert with a title
    func getAlert(text: String) -> AnyView {
        return AnyView(Text(text))
    }
    
}
//MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
