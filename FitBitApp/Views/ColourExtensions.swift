//
//  ColourExtensions.swift
//  FitBitApp
//
//  Created by Ian   on 04/03/2025.
//

import SwiftUI

extension Color {
    static let darkGray = Color(red: 51/255, green: 51/255, blue: 51/255)
    static let lightGray = Color(red: 245/255, green: 245/255, blue: 245/255)
    static let redAccent = Color(red: 255/255, green: 45/255, blue: 85/255) // Bright red
    static let yellowAccent = Color(red: 255/255, green: 204/255, blue: 0/255) // Bright yellow
    static let purpleAccent = Color(red: 175/255, green: 82/255, blue: 191/255) // Vibrant purple
}

extension ShapeStyle where Self == Color {
    static var darkGray: Color { Color(red: 51/255, green: 51/255, blue: 51/255) }
    static var lightGray: Color { Color(red: 245/255, green: 245/255, blue: 245/255) }
    static var redAccent: Color { Color(red: 255/255, green: 45/255, blue: 85/255) }
    static var yellowAccent: Color { Color(red: 255/255, green: 204/255, blue: 0/255) }
    static var purpleAccent: Color { Color(red: 175/255, green: 82/255, blue: 191/255) }
}
