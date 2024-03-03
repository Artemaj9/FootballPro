//
//  ScrollGradient.swift
//

import SwiftUI



struct ScrollGradient: View {

    let stops = [Gradient.Stop(color: Color.green.opacity(0), location: 0.01),
                 Gradient.Stop(color: .green, location: 0.05),

                 Gradient.Stop(color: .green, location: 0.95),
                 Gradient.Stop(color: Color.red.opacity(0), location: 1)]
            
    var body: some View {
        LinearGradient(stops: stops, startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    ScrollGradient()
}
