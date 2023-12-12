//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 30/11/23.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // backGround
            RadialGradient(
                colors: [Color.purple, Color.blue],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea() // deprecated UIScreen.main.bounds.height
            
            // if user is signed in -> show profile View, else onboarding View
            if currentUserSignedIn {
                ProfileView()
                // transition Bugada
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                    
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
        }
    }
}

#Preview {
    IntroView()
}
