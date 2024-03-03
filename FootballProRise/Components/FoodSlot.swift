//
//  FoodSlot.swift
//

import SwiftUI

struct FoodSlot: View {
    let number: Int
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        VStack(spacing: 4) {
            Image("food\(number)")
                .resizableToFit()
            Button {
                if vm.balance >= nutritions[number-1].price {
                    vm.balance -= nutritions[number-1].price
                    vm.energyLevel += nutritions[number-1].energy
                    withAnimation {
                        vm.lastNutrition = nutritions[number-1].energy
                        vm.isPlusEnergy = true
                    }
                }
                    
            } label: {
                Image("greenbtn")
                    .resizableToFit()
                    .overlay {
                        HStack {
                            Text("Get for ")
                                .font(.custom(.regular, size: 18))
                            +
                            Text("\(nutritions[number-1].price)")
                                .font(.custom(.extraBold, size: 18))
                            
                            Image("coin")
                                .resizableToFit()
                        }
                        .foregroundStyle(Color("customWhite"))
                    }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    FoodSlot(number: 1)
        .environmentObject(GameLogic())
}
