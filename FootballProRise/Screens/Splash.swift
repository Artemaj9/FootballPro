//
//  Splash.swift
//

import SwiftUI

struct Splash: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Background(image:"splash")
                .overlay {
                    GeometryReader { geo in
                        Color.clear
                            .onAppear {
                                vm.size = geo.size
                                print("width: \(vm.size.width)")
                                print("height: \(vm.size.height)")
                                if vm.size.width > 400 {
                                    vm.coef = 1.2
                                }
                            }
                    }
                }
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
