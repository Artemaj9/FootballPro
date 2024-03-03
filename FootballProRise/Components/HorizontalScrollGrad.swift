//
//  HorizontalScrollGrad.swift
//  FootballProRise
//
//  Created by Artem on 03.03.2024.
//

import SwiftUI

struct HorizontalScrollGrad: View {
    
    let stops = [Gradient.Stop(color: Color.green.opacity(0), location: 0.00),
                 Gradient.Stop(color: .green.opacity(0.4), location: 0.05),
                 Gradient.Stop(color: .green.opacity(0.9), location: 0.25),
                 
                 Gradient.Stop(color: .green, location: 0.9),
                 Gradient.Stop(color: Color.red.opacity(0), location: 1)]
    
    var body: some View {
        LinearGradient(stops: stops, startPoint: .leading, endPoint: .trailing)
    }
}


#Preview {
    HorizontalScrollGrad()
}
