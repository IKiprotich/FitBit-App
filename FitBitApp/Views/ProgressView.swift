//
//  ProgressView.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//
import SwiftUI

struct ProgressView: View {
    let insight = "Your squat strength is up 5% this week!"
    @State private var selectedDate = Date()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Your Progress")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.darkGray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)

                    // Calendar Placeholder
                    VStack(alignment: .leading) {
                        Text("Workout History")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.darkGray)
                            .padding(.leading, 16)
                        CalendarView(selectedDate: $selectedDate)
                            .frame(height: 300)
                            .padding(.horizontal, 16)
                    }

                    // Graph Placeholder
                    VStack(alignment: .leading) {
                        Text("Weekly Trend")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.darkGray)
                            .padding(.leading, 16)
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.blue, .yellowAccent]), startPoint: .top, endPoint: .bottom))
                            .frame(height: 200)
                            .cornerRadius(12)
                            .overlay(
                                Text("Graph Placeholder\n(Use SwiftUI Charts)")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            )
                            .padding(.horizontal, 16)
                    }

                    // Insight Card
                    HStack {
                        Image(systemName: "brain")
                            .foregroundColor(.purpleAccent)
                        Text("AI Insight: \(insight)")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.darkGray)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                    .padding(.horizontal, 16)
                }
                .background(.lightGray)
            }
            .navigationTitle("Progress")
        }
    }
}

struct CalendarView: View {
    @Binding var selectedDate: Date

    var body: some View {
        VStack {
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(.graphical)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
