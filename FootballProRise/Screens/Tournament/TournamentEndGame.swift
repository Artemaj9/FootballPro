//
//  TournamentEndGame.swift
//

import SwiftUI

struct TournamentEndGame: View {
    @EnvironmentObject var vm: GameLogic
    @State private var opacity: Double = 0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Background(image: "fieldbg2")
                .blur(radius: 3)
            GradAnimation(color: vm.isWin ? "sea" : "magiccolor")
                .blendMode(.plusLighter)
                .rotationEffect(.degrees(180))
                .opacity(0.4)
            Color("bluebg")
                .opacity(vm.isWin ? 0.49 : 0.81)
                .onTapGesture {
                    vm.isWin.toggle()
                }
            
            VStack {
                txtGrad
                    .frame(height: 60)
                    .mask {
                        Text(vm.isWin ? "YOU WIN!" : "LOSE..")
                            .font(.custom(.black, size: 54))
                            .multilineTextAlignment(.center)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 8, y: 8)
                    }
                
                HStack {
                    VStack(spacing: 8) {
                        Text("Your league:")
                            .font(.custom(.regular, size: 12))
                            .padding(.top, 8)
                        Image("league\(vm.league)")
                            .resizableToFit()
                            .frame(width: 100)
                            .padding(.horizontal)
                        Text("Horizon\nHeroes")
                            .font(.custom(vm.isWin ? .bold : .regular, size: 22))
                            .multilineTextAlignment(.center)
                            .offset(y: -8)
                            .padding(.top, 8)
                        Image(vm.isWin ? "winnerscore" : "looserscore")
                            .resizableToFit()
                            .frame(width: 60)
                            .opacity(0.71)
                            .overlay {
                                if vm.isWin {
                                    txtGrad
                                        .mask {
                                            Text("\(vm.score)")
                                                .font(.custom(.extraBold, size: 37))
                                                .offset(y: 4)
                                        }
                                } else {
                                    grayGrad
                                        .mask {
                                            Text("\(vm.score)")
                                                .font(.custom(.extraBold, size: 37))
                                                .offset(y: 4)
                                        }
                                }
                            }
                    }
                    VStack(spacing: 8) {
                        Text("Opponent:")
                            .font(.custom(.regular, size: 12))
                            .padding(.top, 8)
                        Image("op\(vm.opponent)")
                            .resizableToFit()
                            .frame(width: 100)
                            .padding(.horizontal)
                        Text("Horizon\nHeroes")
                            .font(.custom(!vm.isWin ? .bold : .regular, size: 22))
                            .offset(y: -8)
                            .multilineTextAlignment(.center)
                            .padding(.top, 8)
                        Image(!vm.isWin ? "winnerscore" : "looserscore")
                            .resizableToFit()
                            .opacity(0.71)
                            .frame(width: 60)
                            .overlay {
                                if !vm.isWin {
                                    txtGrad
                                        .mask {
                                            Text("\(vm.oppponentScore)")
                                                .font(.custom(.extraBold, size: 37))
                                                .offset(y: 4)
                                        }
                                } else {
                                    grayGrad
                                        .mask {
                                            Text("\(vm.oppponentScore)")
                                                .font(.custom(.extraBold, size: 37))
                                                .offset(y: 4)
                                        }
                                }
                            }
                    }
                }
                Button {
                    if vm.isWin {
                        vm.balance += 1000
                        if vm.league < 7 {
                            vm.league += 1
                            vm.showCongratulation = true
                        } else {
                            vm.resetGame()
                            dismiss()
                        }
                    } else {
                        vm.resetGame()
                        dismiss()
                    }
                } label: {
                    Image("saveoutbtn")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.7)
                        .opacity(0.9)
                        .padding(.top, 20)
                        .opacity(opacity)
                }
            }
            .offset(y: -vm.size.height * 0.07)
            if vm.showCongratulation {
                CongratulationsView()
                    .environmentObject(vm)
            }
        }
        .overlay(alignment: .bottom) {
            ZStack {
                Image("endcup")
                    .resizableToFit()
                    .frame(height: vm.size.height * 0.32)
                    .opacity(vm.isWin ? 1 : 0.58)
                    .background {
                        if vm.isWin {
                            MagicGradient()
                                .saturation(1.5)
                                .blendMode(.hardLight)
                        }
                    }
            }
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
        .onAppear {
            withAnimation(.easeInOut(duration: 1).delay(1)) {
                opacity = 1
            }
        }
    }
}

#Preview {
    TournamentEndGame()
        .environmentObject(GameLogic())
}
