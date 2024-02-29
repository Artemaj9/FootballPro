//
//  MagicGradient.swift
//  FootballProRise
//
//  Created by Artem on 29.02.2024.
//

import SwiftUI

struct MagicGradient: View {
    @State var radius: Double = 120
    @State var time: Double = 0
    var body: some View {
        RadialGradient(gradient: Gradient(colors: [Color("magiccolor"), Color.white.opacity(0)]), center: .center, startRadius: 10, endRadius: radius)
            .blur(radius: 20)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                    withAnimation {
                        self.time += 0.1
                        self.radius = 120.0 + 80 * abs(sin(2 * 3.14 * 0.1 * self.time))
                    }
                }
            }
    }
}

#Preview {
    MagicGradient()
}
