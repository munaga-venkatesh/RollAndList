//
//  ContentView.swift
//  RollAndList
//
//  Created by Venkatesh Munaga on 18/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PickAName()
                .tabItem {
                    Label("Pick a name", systemImage: "person.3.sequence.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
