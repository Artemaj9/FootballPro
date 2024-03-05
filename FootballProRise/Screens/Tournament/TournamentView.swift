//
//  TournamentView.swift
//

import SwiftUI

struct TournamentView: View {
    @EnvironmentObject var vm: GameLogic
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Background(image: "fieldbg")
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
                .offset(y: -vm.size.height * 0.43)
            VStack() {
                txtGrad
                    .frame(height: 100)
                    .mask {
                        Text("TOURNAMENT")
                            .font(.custom(.black, size: 38))
                            .multilineTextAlignment(.center)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 5, y: 5)
                    }
                    .offset(y: 16)
                Image("tournamentrect")
                    .resizableToFit()
                    .frame(width: vm.size.width*0.9)
                    .overlay {
                        VStack {
                            Text("Score")
                                .font(.custom(.regular, size: 18))
                            +
                            Text(" more points ")
                                .font(.custom(.bold, size: 18))
                            +
                            Text("to win and\nadvance to the next leaue!")
                                .font(.custom(.regular, size: 18))
                            
                            HStack {
                                VStack(spacing: 8) {
                                    Text("Your league:")
                                        .font(.custom(.bold, size: 14))
                                    Image("league\(vm.league)")
                                        .resizableToFit()
                                        .padding(.horizontal)
                                    Text(leagueName[vm.league - 1])
                                        .font(.custom(.bold, size: 14))
                                        .offset(y: -8)
                                }
                                
                                VStack(spacing: 8) {
                                    Text("Opponent:")
                                        .font(.custom(.regular, size: 14))
                                    Image("op\(vm.opponent)")
                                        .resizableToFit()
                                        .padding(.horizontal)
                                    Text(opponents[vm.opponent - 1])
                                        .font(.custom(.regular, size: 14))
                                        .offset(y: -8)
                                }
                            }
                            .padding(.vertical)
                           
                            Button {
                                vm.shuffleQuestions()
                                vm.currentQuestion = 1
                                vm.score = 0
                                vm.oppponentScore = 0
                                vm.isGame = true
                                vm.setupTimer()
                            } label: {
                                Image("startbtn")
                                    .resizableToFit()
                                    .padding(.horizontal)
                            }
                        }
                        .foregroundStyle(Color("customWhite"))
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)   
                    }
            }
            .offset(y: vm.size.width>380 ? -vm.size.height*0.04 : -vm.size.width*0.02)
            
            if vm.isGame {
                TournamentGameView()
                    .environmentObject(vm)
            }
            
            }
        .onAppear {
            vm.isTournament = true
        }
        
        .overlay(alignment: .bottomTrailing) {
            Image("cup2")
                .resizableToFit()
                .frame(width: vm.size.width > 380 ? vm.size.width * 0.45 : vm.size.width*0.4)
                .offset(y: vm.size.width>380 ? vm.size.height * 0.04 : vm.size.height * 0.08)
                .opacity(vm.showResult || vm.isEndGame ? 0 : 1)
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
        .onAppear {
            vm.opponent = Int.random(in: 1...10)
        }
    }
}

#Preview {
    TournamentView()
        .environmentObject(GameLogic())
}
