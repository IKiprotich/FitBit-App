//
//  LogWorkoutView.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//

import SwiftUI

struct Workout: Identifiable {
    let id = UUID()
    let exercise: String
    let sets: Int
    let reps: Int
    let weight: Double
    let date: Date = Date()
}

struct LogWorkoutView: View {
    @State private var exercise = ""
    @State private var sets = ""
    @State private var reps = ""
    @State private var weight = ""
    @State private var workouts: [Workout] = []
    let exerciseSuggestions = ["Squat", "Bench Press", "Deadlift", "Pull-Up"]
    
    var body: some View {
        NavigationView {
            VStack {
                // Form
                Form {
                    Section(header: Text("Log a Workout")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.darkGray)) {
                            Picker("Exercise", selection: $exercise) {
                                Text("Select an exercise").tag("")
                                ForEach(exerciseSuggestions, id: \.self) { suggestion in
                                    Text(suggestion).tag(suggestion)
                                }
                            }
                            .pickerStyle(.menu)
                            
                            TextField("Or type custom exercise", text: $exercise)
                                .textFieldStyle(.roundedBorder)
                                .foregroundColor(.darkGray)
                            
                            TextField("Sets", text: $sets)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.roundedBorder)
                                .foregroundColor(.darkGray)
                            
                            TextField("Reps", text: $reps)
                                .keyboardType(.numberPad)
                                .textFieldStyle(.roundedBorder)
                                .foregroundColor(.darkGray)
                            
                            TextField("Weight (lbs)", text: $weight)
                                .keyboardType(.decimalPad)
                                .textFieldStyle(.roundedBorder)
                                .foregroundColor(.darkGray)
                        }
                    
                    Button("Save Workout") {
                        if let setsInt = Int(sets), let repsInt = Int(reps), let weightDouble = Double(weight), !exercise.isEmpty {
                            let newWorkout = Workout(exercise: exercise, sets: setsInt, reps: repsInt, weight: weightDouble)
                            workouts.append(newWorkout)
                            exercise = ""
                            sets = ""
                            reps = ""
                            weight = ""
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.purpleAccent)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .disabled(exercise.isEmpty || sets.isEmpty || reps.isEmpty || weight.isEmpty)
                    
                    // Workout History
                    List(workouts) { workout in
                        VStack(alignment: .leading, spacing: 4) {
                            Text(workout.exercise)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.darkGray)
                            Text("\(workout.sets)x\(workout.reps) @ \(workout.weight, specifier: "%.1f") lbs")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical, 4)
                    }
                    .background(.lightGray) // Use .lightGray as ShapeStyle
                }
                .navigationTitle("Log Workout")
            }
        }
    }
    
    struct LogWorkoutView_Previews: PreviewProvider {
        static var previews: some View {
            LogWorkoutView()
        }
    }
}
