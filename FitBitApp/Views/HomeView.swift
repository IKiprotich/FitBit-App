//
//  HomeView.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//

import SwiftUI

struct HomeView: View {
    let lastWorkout = "Bench Press - 5 reps @ 135 lbs"
    let streak = 3
    let quote = "The only bad workout is the one you didn’t do."
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Header with Gradient
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [.blue, .cyan]), startPoint: .top, endPoint: .bottom)
                            .frame(height: 100)
                            .cornerRadius(12)
                        Text("Welcome Back!")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                    }
                    
                    // Stats Card
                    VStack(spacing: 10) {
                        Text("Quick Stats")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.darkGray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 16)
                        
                        Divider()
                            .background(.gray)
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Last Workout")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                Text(lastWorkout)
                                    .font(.system(size: 14))
                                    .foregroundColor(.darkGray)
                            }
                            Spacer()
                            VStack(alignment: .trailing, spacing: 4) {
                                Text("Streak")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                Text("\(streak) days")
                                    .font(.system(size: 14))
                                    .foregroundColor(.green)
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                    .padding(.horizontal, 16)
                    
                    // Quote
                    Text("'\(quote)'")
                        .font(.system(size: 14).italic())
                        .foregroundColor(.yellowAccent)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 16)
                    
                    // Start Workout Button
                    NavigationLink(destination: LogWorkoutView()) {
                        Text("Start Workout")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.blue)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 16)
                }
            }
            .background(.lightGray)
            .navigationTitle("Dashboard")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
