//
//  ScrollGradient.swift
//  FootballProRise
//
//  Created by Artem on 29.02.2024.
//

import SwiftUI



struct ScrollGradient: View {
    let stops = [Gradient.Stop(color: Color.green.opacity(0), location: 0.01),
                 Gradient.Stop(color: .green, location: 0.05),
                // Gradient.Stop(color: Color.blue, location: 0.66),
                 Gradient.Stop(color: .green, location: 0.95),
                 Gradient.Stop(color: Color.red.opacity(0), location: 1)]
                 //Gradient.Stop(color: Color.red, location: 1.0)]]
    var body: some View {
        LinearGradient(stops: stops, startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    ScrollGradient()
}
