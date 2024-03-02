//
//  AnimationBurst.swift
//  FootballProRise
//
//  Created by Artem on 29.02.2024.
//

import SwiftUI

struct AnimationBurst: View {
    @State var radius: Double = 120
    @State var time: Double = 0
    
    var body: some View {
        ZStack {
        //    Color("sea")
          //      .ignoresSafeArea()
            RadialGradient(gradient: Gradient(colors: [Color.indigo, Color.white.opacity(0)]), center: .center, startRadius: 60, endRadius: radius)
                .hueRotation(Angle(radians: 70 * 3.14 * 0.03 * time))
            // .blur(radius: 20)
            // .blendMode(.lighten)
            // .offset(x: 50*sin(2 * 3.14 * 0.03 * time))
                .offset(y: 200*cos(2 * 3.14 * 0.05 * time * 54))
                .grayscale(abs(1*cos(2 * 3.14 * 0.95 * time * 54)))
                .ignoresSafeArea()
            
            
          //  RadialGradient(gradient: Gradient(colors: [Color.indigo, Color.white.opacity(0)]), center: .center, startRadius: 60, endRadius: radius)
           //     .hueRotation(Angle(radians: -10 * 3.14 * 0.03 * time))
            // .blur(radius: 20)
            // .blendMode(.lighten)
            // .offset(x: 50*sin(2 * 3.14 * 0.03 * time))
            
                .offset(y: -200*cos(2 * 3.14 * 0.05 * time * 54))
                .scaleEffect(x: 1 + 0.2*abs(1*cos(2 * 3.14 * 8 * time)))
                .blendMode(.colorDodge)
                .saturation(1 + abs(1*sin(2 * 3.14 * 0.05 * time * 54)))
                .ignoresSafeArea()
                .grayscale(abs(1*cos(2 * 3.14 * 0.05 * time * 54)))
        }
        .blur(radius: 80)
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
                withAnimation {
                    self.time += 0.1
                    self.radius = 220.0 + 180 * abs(sin(2 * 3.14 * 0.1 * self.time))
                }
            }
        }
    }
}

#Preview {
    AnimationBurst()
}
