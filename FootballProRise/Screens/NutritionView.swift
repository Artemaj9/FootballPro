//
//  Nutrition.swift
//

import SwiftUI

struct NutritionView: View {
    @EnvironmentObject var vm: GameLogic
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("welcomebg")
                .resizableToFill()
                .scaleEffect(1.01)
            
            VStack {
                HStack(alignment: .top, spacing: 20) {
                    Button {
                        dismiss()
                    } label: {
                        Image("backbtn")
                            .resizableToFill()
                            .frame(width: 50, height: 50)
                    }
                 
                    Image("balancebg")
                        .resizableToFit()
                        .frame(height: 40)
                        .overlay {
                            HStack(spacing: 24) {
                                Text("Balance:")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.regular, size: 14))
                                    .shadow(color: .black.opacity(0.23), radius: 2, y: 1)
                                
                                Text(String(vm.balance))
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.bold, size: 19))
                                    .padding(.trailing, 8)
                                    .shadow(color: .black.opacity(0.23), radius: 2, y: 2)
                            }
                            .offset(y: 2)
                        }
                        .overlay(alignment: .trailing) {
                            Image("coin")
                                .resizableToFit()
                                .offset(x: 4, y: 2)
                                .scaleEffect(1.1)
                        }
                    EnergyLevel()
                        .environmentObject(vm)
                        .offset(y: 6)
                }
                .padding(.top, 60)
                
                ScrollView(showsIndicators: false)
                {
                    Color.clear
                        .frame(height: 20)
                    ForEach (1..<nutritions.count + 1) { index in
                        FoodSlot(number: index)
                            .environmentObject(vm)
                    }
                    Color.clear
                        .frame(height: 80)
                }
                .padding(.top, 4)
                .mask {
                    ScrollGradient()
                }
            }
            if vm.isPlusEnergy {
                EnergyPlusView()
                    .environmentObject(vm)
            }
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
        .ignoresSafeArea()
    }
}

#Preview {
    NutritionView()
        .environmentObject(GameLogic())
}
