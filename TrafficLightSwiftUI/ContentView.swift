//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by abd ul’Karim 📚 on 22.07.2024.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        VStack(spacing: 30) {
            ColorCircleView(color: .red, opacity: redLight)
            ColorCircleView(color: .yellow, opacity: yellowLight)
            ColorCircleView(color: .green, opacity: greenLight)
            
            Spacer()
            
            StartButtonView(title: buttonTitle) {
                if buttonTitle == "START" {
                    buttonTitle = "NEXT"
                }
                nextColor()
            }
        }
        .padding()
    }
    
    
    private func nextColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            yellowLight = lightIsOff
            greenLight = lightIsOn
        }
    }
}
#Preview {
    ContentView()
}
