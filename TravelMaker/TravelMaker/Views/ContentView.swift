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
           HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MyTravelView()
                .tabItem {
                    Label("My Travel", systemImage: "airplane")
                }
            MessageView()
                .tabItem {
                    Label("Message", systemImage: "text.bubble")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
        .accentColor(.tmBlue2)
    }
}

#Preview {
    ContentView()
}
