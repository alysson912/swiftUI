//
//  swift_FirebaseBootcampApp.swift
//  swift+FirebaseBootcamp
//
//  Created by Alysson Menezes on 19/02/24.
//

import SwiftUI
import FirebaseCore


@main
struct swift_FirebaseBootcampApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
//    init() {
//        FirebaseApp.configure()
//        print("Firebase Configured")
//    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
