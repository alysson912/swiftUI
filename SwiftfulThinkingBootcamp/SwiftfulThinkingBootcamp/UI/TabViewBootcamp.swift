//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 24/11/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    var body: some View {
        //MARK: EXAMPLE 01
//        TabView(selection: $selectedTab){
//            
//            Screen01(selectTab: $selectedTab).tabItem {
//                Image(systemName: "house.fill")
//                Text("Home")
//            }.tag(1)
//            
//            Screen02().tabItem {
//                Image(systemName: "globe")
//                Text("Browser")
//            }.tag(2)
//            
//            Screen03().tabItem {
//                Image(systemName: "person.fill")
//                Text("Profile")
//            }.tag(3)
//        }
//        .background(Color.yellow)
//        .tint(Color.yellow)
        
        //MARK: EXAMPLE 02
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(
        
            RadialGradient(gradient: Gradient(colors: [Color.cyan, Color.purple, Color.red]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        .padding(5)
        
    }
}

struct Screen01:  View {
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack {
                Text("Screen 01")
                    .font(.largeTitle)
                .foregroundStyle(.white)
                
                Button(action: {
                    selectTab = 2
                }, label: {
                    Text("Go to Screen 2")
                })
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(
                    Color.blue
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                )
            }
        }
    }
}
struct Screen02:  View {

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Text("Screen 02")
                    .font(.largeTitle)
                .foregroundStyle(.white)
                
       
                
            }
        }
    }
}
struct Screen03:  View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Screen 03")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    TabViewBootcamp()
}
