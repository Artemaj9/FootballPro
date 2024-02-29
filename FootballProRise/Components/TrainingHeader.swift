//
//  TrainingHeader.swift
//

import SwiftUI

struct TrainingHeader: View {
    let title: String
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image("backbtn")
                .resizableToFill()
                .frame(width: 50, height: 50)

               Text(title)
                .foregroundStyle(Color("customWhite"))
                .font(.custom(.black, size: 30))
                .offset(y: 8)
            EnergyLevel()
                .environmentObject(vm)
                .offset(y: 6)
        }
    }
}

#Preview {
    ZStack {
        Image("welcomebg")
            .resizableToFill()
            .scaleEffect(1.01)
        TrainingHeader(title: "STRENGTH")
            .environmentObject(GameLogic())
    }
}
