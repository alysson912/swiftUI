//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Alysson Menezes on 30/11/23.
//

import SwiftUI
// Onboarding States
/*
 0 - Welcome Screen
 1 - Add Name
 2 - Add age
 3 - Add gender
 */

struct OnboardingView: View {
    //Onboarding Stats
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    //Onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    //Onboarding Alerts
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var showAlert: Bool = false
    
    // Gender Picker options
    let genderArray: [String] = [ "Select your gender","Male", "Female", "Others"]
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.green)
                }
            }
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(alertTitle, isPresented: $showAlert, actions: {
            // 1
            Button("ok", role: .cancel, action: {})
            //  Button("Destructive", role: .destructive, action: {})
        }, message: {
            // getAlert(text: "Your name must be at least 3 characters long!")
            getAlert(text: alertMessage)
        })
    }
    
    
}

#Preview {
    OnboardingView()
    
}

//MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign up " :
                onboardingState == 3 ? "Finish" :
                "Next"
        )
        .font(.headline)
        .foregroundStyle(.purple)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        // .animation(nil) //deprecated
        
        
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This is th #1 app for finding your match online! In this tutorial we are praticing using AppStorage and other SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .background(Color.white)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
            Spacer()
        }
        //.multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\( String(format: "%.0f", age))") // text formated
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        //.multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Picker(selection: $gender, label: Text("Picker")) {
                //   Text("Select your gender").tag("Select your gender")
                ForEach(genderArray.indices) { number in
                    Text(genderArray[number]).tag(genderArray[number])
                    
                    
                    
                    
                }
                
            }
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .pickerStyle(.menu)
            
            Spacer()
            Spacer()
        }
        //.multilineTextAlignment(.center)
        .padding(30)
    }
}

//MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed(){
        
        // CHECK INPUTS
        switch  onboardingState {
        case 1:
            guard name.count >= 3 else{
                alertTitle = "Warning"
                alertMessage = "Your name must be at least 3 characters long!"
                getAlert(text: alertMessage)
                return
            }
        case 3:
            guard gender.count >= 1 else {
                alertTitle = "Warning"
                alertMessage = "Please select a gender before moving forward!"
                getAlert(text: alertMessage)
                return
            }
            
        default:
            break
        }
        
        // GOT TO NEXT SECTION
        if onboardingState == 3 {
            signIn()
            
        } else {
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
    }
    
    func signIn(){
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
       
    }
    
    func getAlert(text: String) -> AnyView {
        showAlert.toggle()
        return AnyView(Text(text))
    }
}
