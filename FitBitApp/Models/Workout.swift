//
//  Workout.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    let exercise: String
    let sets: Int
    let reps: Int
    let weight: Double
    let date: Date = Date()
}
