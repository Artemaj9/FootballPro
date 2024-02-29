//
//  Splash.swift
//

import SwiftUI

struct Splash: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        Image("splash")
            .resizableToFill()
            .scaleEffect(1.01)
            .ignoresSafeArea()
           
                AnimationBurst()
                    .environmentObject(vm)
    }
}

#Preview {
    Splash()
        .environmentObject(GameLogic())
}
