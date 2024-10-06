//
//  ContentView.swift
//  FlavorFusion
//
//  Created by Emil Piórkowski on 06/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Add recipe", systemImage: "plus.circle") {
                AddNewRecipeView()
            }
            Tab("Settings", systemImage: "gear") {
                SettingsView()
            }
        }
        .tabViewStyle(.tabBarOnly)
        .tint(.black)
        .onAppear() {
            UITabBar.appearance().unselectedItemTintColor = .systemGray
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    ContentView()
}
