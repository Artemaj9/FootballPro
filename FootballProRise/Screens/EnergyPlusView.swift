//
//  EnergyPlusView.swift
//

import SwiftUI

struct EnergyPlusView: View {
    @EnvironmentObject var vm: GameLogic
    @State var opacity: Double = 0
    var body: some View {
        ZStack {
            Color("darkbg")
            GradAnimation(color: "sea")
                .rotationEffect(.degrees(180))
                .opacity(0.2)
            MagicGradient()
                .offset(y: -vm.size.height * 0.1)
            VStack {
                Image("drinks")
                    .resizableToFit()
                    .frame(width: vm.size.width * 0.6)
                Text("+40")
                    .foregroundStyle(.white)
                    .font(.custom(.extraBold, size: 63))
                    .opacity(opacity)
                Image("savebtn")
                    .resizableToFit()
                    .frame(width: vm.size.width * 0.4)
            }
        
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeInOut(duration: 1).delay(0.8)) {
                opacity = 1
            }
        }
    }
}

#Preview {
    EnergyPlusView()
        .environmentObject(GameLogic())
}
