//
//  Splash.swift
//

import SwiftUI

struct Splash: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Image("splash")
                .resizableToFill()
                .scaleEffect(1.01)
                .ignoresSafeArea()
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { timer in
                withAnimation {
                    self.vm.isSplash = false
                }
            }
        }
    }
}

#Preview {
    Splash()
        .environmentObject(GameLogic())
}
