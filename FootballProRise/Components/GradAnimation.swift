//
//  GradAnimation.swift
//


import SwiftUI

struct GradAnimation: View {
    @State var start = UnitPoint(x: 0, y: 0.9)
    @State var end = UnitPoint(x: 0, y: 1)
    @State var opacity: Double = 1
    let color: String
    var delay: TimeInterval = 0
    
    var body: some View {

        LinearGradient(
            colors: [
                Color(color).opacity(0.7),
                Color.white.opacity(0),
            ],
            startPoint: start,
            endPoint: end
            )
        .opacity(opacity)
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.smooth(duration: 3).delay(delay)) {
                start = UnitPoint(x: 0, y: 0)
                end = UnitPoint(x: 0, y: 1)
                opacity = 0
            }
        }
    }
}

#Preview {
    GradAnimation(color: "sea")
}
