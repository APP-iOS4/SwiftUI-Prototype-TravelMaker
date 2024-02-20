//
//  ContentView.swift
//  TravelMaker
//
//  Created by 이우석 on 2/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Travel")
                .tabItem {
                    Label("My Travel", systemImage: "airplane")
                }
            Text("Message")
                .tabItem {
                    Label("Message", systemImage: "text.bubble")
                }
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
