//
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
  
    @StateObject var vm = GameLogic()
    
    var body: some View {
        ZStack {
            if vm.isSplash {
                Splash()
                    .environmentObject(vm)
                    .transition(.move(edge: .trailing))
            } else if vm.isWelcome {
                Welcome()
                    .environmentObject(vm)
            } else {
                MenuView()
                    .transition(.slide)
                    .environmentObject(vm)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
        .environmentObject(GameLogic())
}
