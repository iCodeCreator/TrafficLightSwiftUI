//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by abd ul’Karim 📚 on 22.07.2024.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
