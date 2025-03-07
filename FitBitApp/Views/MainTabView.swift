//
//  MainTabView.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            LogWorkoutView()
                .tabItem { Label("Log", systemImage: "dumbbell") }
            ProgressView()
                .tabItem { Label("Progress", systemImage: "chart.bar") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
        .accentColor(.blue) // Tab bar tint
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
