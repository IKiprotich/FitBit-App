//
//  ProfileView.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//

import SwiftUI

struct ProfileView: View {
    @State private var username = "Ian Kip"
    @State private var goal = "Bench Press 200 lbs"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Profile")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.darkGray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                    
                    // Details Card
                    VStack(spacing: 10) {
                        Text("User Details")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.darkGray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        
                        TextField("Username", text: $username)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(.darkGray)
                            .background(.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 16)
                        
                        TextField("Goal", text: $goal)
                            .textFieldStyle(.roundedBorder)
                            .foregroundColor(.darkGray)
                            .background(.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 16)
                    }
                    .background(.lightGray) // Use .lightGray as ShapeStyle
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                    .padding(.horizontal, 16)
                    
                    // PR Card
                    VStack(spacing: 10) {
                        Text("Personal Records")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.darkGray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        Text("Deadlift: 315 lbs")
                            .font(.system(size: 14))
                            .foregroundColor(.darkGray)
                            .padding(.leading, 16)
                        Text("Squat: 225 lbs")
                            .font(.system(size: 14))
                            .foregroundColor(.darkGray)
                            .padding(.leading, 16)
                    }
                    .background(.lightGray) // Use .lightGray as ShapeStyle
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                    .padding(.horizontal, 16)
                    
                    // Settings Button
                    Button("Settings") {
                        print("Settings tapped")
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 16)
                }
                .background(.lightGray) // Use .lightGray as ShapeStyle
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
