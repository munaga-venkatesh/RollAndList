//
//  RollAndListApp.swift
//  RollAndList
//
//  Created by Venkatesh Munaga on 18/05/26.
//

import SwiftUI

@main
struct RollAndListApp: App {
    @AppStorage("hasSeenWelcome") private var hasSeenWelcome = false
    
    init() { // Test perpose
        UserDefaults.standard.removeObject(forKey: "hasSeenWelcome")
    }
    
    var body: some Scene {
        WindowGroup {
            if hasSeenWelcome {
                ContentView()
            } else {
                WelcomePage()
            }
        }
    }
}
