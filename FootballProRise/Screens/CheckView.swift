//
//  CheckView.swift
//

import SwiftUI

struct CheckView: View {
    @EnvironmentObject var vm: GameLogic
    @State var opacity: Double = 0
    
    var body: some View {
        ZStack {
            Color("darkbg")
            GradAnimation(color: "sea")
                .rotationEffect(.degrees(180))
                .opacity(0.2)
            MagicGradient()
                .offset(y: -vm.size.height * 0.03)
            VStack {
                ZStack {
                    txtGrad
                        .frame(height: 70)
                        .mask {
                            Text(vm.isRigthAnswer ? "GREAT!" : "WRONG..")
                                .font(.custom(.black, size: 60))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                        }
                }
                
                if vm.isToutnament {
                    Image(vm.isRigthAnswer ? "league\(vm.league)" : "op\(vm.opponent)")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.4)
                        .offset(y: vm.size.height * 0.02)
                } else {
                    Image(vm.isRigthAnswer ? "balls" : "drinks")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.6)
                }
                
                Text(vm.isToutnament ? "+ 1" : vm.isRigthAnswer ? "+ 50" : "- 10")
                    .foregroundStyle(.white)
                    .font(.custom(.bold, size: 50))
                    .opacity(opacity)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                Button {
                    withAnimation {
                        vm.checkView = false
                    }
                } label: {
                    Image("nextbtn")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.5)
                }
            }
        }
        .ignoresSafeArea()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .onAppear {
            withAnimation(.easeInOut(duration: 1).delay(0.8)) {
                opacity = 1
            }
        }
    }
}

#Preview {
    CheckView()
        .environmentObject(GameLogic())
}
