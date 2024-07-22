//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by abd ul’Karim 📚 on 22.07.2024.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
        .frame(width: 185, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .shadow(radius: 10)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

#Preview {
    StartButtonView(title: "START", action: {})
}
