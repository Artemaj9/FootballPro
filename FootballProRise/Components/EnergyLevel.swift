//
//  EnergyLevel.swift
//

import SwiftUI

struct EnergyLevel: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Image("energyrect")
                    .resizableToFit()
                    .frame(width: 50, height: 30)
                    .overlay {
                        Text("\(vm.energyLevel)")
                            .foregroundStyle(Color("customWhite"))
                            .font(.custom(.bold, size: 16))
                            .shadow(color: .black.opacity(0.23), radius: 3, y: 1)
                    }
                Text("Energy")
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.regular, size: 8))
                    .padding(.leading, 4)
                    .shadow(color: .black.opacity(0.23), radius: 1, y: 1)
            }
            .overlay(alignment: .bottomTrailing) {
                Image("energydrink")
                    .resizableToFit()
                    .frame(width: 45, height: 50)
                    .offset(x: 20, y: 16)
            }
        }
    }
}

#Preview {
    ZStack {
        Image("welcomebg")
            .resizableToFill()
            .ignoresSafeArea()
        EnergyLevel()
            .environmentObject(GameLogic())
    }
}
