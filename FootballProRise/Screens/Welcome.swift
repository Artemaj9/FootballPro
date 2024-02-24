//
//  Welcome.swift
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject var vm: GameLogic
    var body: some View {
        ZStack {
            Image("welcomebg")
                .resizableToFill()
                .scaleEffect(1.01)
            VStack(alignment: .leading) {
                Text(WelcomeTxt.welcomeTitle)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.extraBold, size: 27))
                
                Text(WelcomeTxt.welcome)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.regular, size: 19))
                    .padding(.top, 8)
              
            }
            .padding()
            .offset(y: -vm.size.height * 0.25)
            
            
            Button {
                
            } label: {
                ZStack {
                    Text("Tap to continue")
                        .font(.custom(.extraBold, size: 23))
                        .foregroundStyle(Color("customWhite").opacity(0.6))
                        .padding(30)
                }
            }
            .offset(y: vm.size.height * 0.3)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Welcome()
        .environmentObject(GameLogic())
}
