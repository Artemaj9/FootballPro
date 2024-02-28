//
//  Nutrition.swift
//

import SwiftUI

struct Nutrition: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Image("welcomebg")
                .resizableToFill()
                .scaleEffect(1.01)
            
            
            VStack {
                HStack(spacing: 20) {
                    Image("backbtn")
                        .resizableToFill()
                        .frame(width: 50, height: 50)
                    
                    Image("balancebg")
                        .resizableToFit()
                        .frame(height: 40)
                        .overlay {
                            HStack(spacing: 24) {
                                Text("Balance:")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.regular, size: 14))
                                    .shadow(color: .black.opacity(0.23), radius: 2, y: 1)
                                
                                Text("1500")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.bold, size: 19))
                                    .padding(.trailing, 8)
                                    .shadow(color: .black.opacity(0.23), radius: 2, y: 2)
                            }
                            .offset(y: 2)
                        }
                    EnergyLevel()
                        .environmentObject(vm)
                        .offset(y: 6)
                }
                .padding(.top, 60)
                Spacer()
            }
        }
        .ignoresSafeArea()
      
    }
}

#Preview {
    Nutrition()
        .environmentObject(GameLogic())
}
