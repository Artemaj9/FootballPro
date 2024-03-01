//
//  TournamentGameView.swift
//

import SwiftUI

struct TournamentGameView: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Background(image: "fieldbg")
            Color("darkbg")
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    Image("league\(vm.league)")
                        .resizableToFit()
                        .frame(width: 60)
                        .padding(.trailing, 4)
                    Image("scorebg")
                        .resizableToFit()
                        .frame(width: 45)
                        .overlay {
                            Text("\(vm.score)")
                                .font(.custom(.bold, size: 24))
                                .foregroundStyle(Color("customWhite"))
                                .shadow(color: .black.opacity(0.23), radius: 3, y: 3)
                        }
                    
                    Text(":")
                        .font(.custom(.bold, size: 24))
                        .foregroundStyle(Color("customWhite"))
                        .shadow(color: .black.opacity(0.23), radius: 3, y: 3)
                    Image("scorebg")
                        .resizableToFit()
                        .frame(width: 45)
                        .overlay {
                            Text("\(vm.oppponentScore)")
                                .font(.custom(.bold, size: 24))
                                .foregroundStyle(Color("customWhite"))
                                .shadow(color: .black.opacity(0.23), radius: 3, y: 3)
                        }
                    Image("op\(vm.opponent)")
                        .resizableToFit()
                        .frame(width: 60)
                        .padding(.leading, 4)
                }
                .padding(.bottom)
                
                Group {
                    Text("Question ")
                        .font(.custom(.medium, size: 12))
                    +
                    Text("\(vm.currentQuestion)")
                        .font(.custom(.bold, size: 12))
                    +
                    Text("/9")
                        .font(.custom(.medium, size: 12))
                }
                .foregroundStyle(Color("customWhite"))
                .opacity(0.9)
                
                
                Text(strengthQuest[2].question)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.medium, size: 24))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, vm.size.width * 0.1)
                
                VStack {
                    Image("bgforansw")
                        .resizableToFit()
                        .overlay {
                            HStack(alignment: .center) {
                                ZStack{
                                    Image("emptyrect")
                                        .resizableToFit()
                                    Image("checkmark")
                                        .resizableToFit()
                                        .scaleEffect(1.15)
                                        .offset(x: 1, y: -1)
                                        .opacity(vm.selectedAnswer == 1 ? 1 : 0)
                                        .animation(.easeInOut(duration: 1),value: vm.selectedAnswer)
                                    
                                    // .scaleEffect(1.14)
                                    //
                                }
                                .onTapGesture {
                                    
                                    if     vm.selectedAnswer != 1 {
                                        vm.selectedAnswer = 1
                                    } else {
                                        vm.selectedAnswer = 0
                                    }
                                }
                                .padding(6)
                                
                                Text(strengthQuest[0].answers[0])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                Spacer()
                                
                            }
                            .offset(y: -2)
                        }
                    Image("bgforansw")
                        .resizableToFit()
                        .overlay {
                            HStack(alignment: .center) {
                                ZStack{
                                    Image("emptyrect")
                                        .resizableToFit()
                                    Image("checkmark")
                                        .resizableToFit()
                                        .scaleEffect(1.15)
                                        .offset(x: 1, y: -1)
                                        .opacity(vm.selectedAnswer == 2 ? 1 : 0)
                                        .animation(.easeInOut(duration: 1),value: vm.selectedAnswer)
                                    
                                    // .scaleEffect(1.14)
                                    //
                                }
                                .onTapGesture {
                                    
                                    if     vm.selectedAnswer != 2 {
                                        vm.selectedAnswer = 2
                                    } else {
                                        vm.selectedAnswer = 0
                                    }
                                }
                                .padding(6)
                                Text(strengthQuest[0].answers[1])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                Spacer()
                                
                            }
                            .offset(y: -2)
                        }
                    Image("bgforansw")
                        .resizableToFit()
                        .overlay {
                            HStack(alignment: .center) {
                                ZStack{
                                    Image("emptyrect")
                                        .resizableToFit()
                                    Image("checkmark")
                                        .resizableToFit()
                                        .scaleEffect(1.15)
                                        .offset(x: 1, y: -1)
                                        .opacity(vm.selectedAnswer == 3 ? 1 : 0)
                                        .animation(.easeInOut(duration: 1),value: vm.selectedAnswer)
                                }
                                .onTapGesture {
                                    
                                    if     vm.selectedAnswer != 3 {
                                        vm.selectedAnswer = 3
                                    } else {
                                        vm.selectedAnswer = 0
                                    }
                                }
                                .padding(6)
                                
                                Text(strengthQuest[0].answers[2])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                Spacer()
                                
                            }
                            .offset(y: -2)
                        }
                    Image("bgforansw")
                        .resizableToFit()
                        .overlay {
                            HStack(alignment: .center) {
                                ZStack{
                                    Image("emptyrect")
                                        .resizableToFit()
                                    Image("checkmark")
                                        .resizableToFit()
                                        .scaleEffect(1.1)
                                        .offset(x: 1, y: -1)
                                        .opacity(vm.selectedAnswer == 4 ? 1 : 0)
                                        .saturation(vm.selectedAnswer == 4 ? 1 : 0)
                                        .animation(.easeInOut(duration: 1),value: vm.selectedAnswer)
                                      
                                }
                                .onTapGesture {
                                    
                                    if     vm.selectedAnswer != 4 {
                                        vm.selectedAnswer = 4
                                    } else {
                                        vm.selectedAnswer = 0
                                    }
                                }
                                .padding(6)
                                
                                
                                Text(strengthQuest[0].answers[3])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                Spacer()
                                
                            }
                            .offset(y: -2)
                        }
                }
                .padding(.horizontal, 24)
                Image("readybtn")
                    .resizableToFit()
                    .padding(.horizontal, 24)
            }
            .offset(y: -vm.size.height * 0.06)
        }
        .ignoresSafeArea()
        .overlay(alignment: .bottomTrailing) {
            Image("cup2")
                .resizableToFit()
                .frame(width: vm.size.width * 0.45)
                .offset(y: vm.size.height * 0.04)
        }
    }
}

#Preview {
    TournamentGameView()
        .environmentObject(GameLogic())
}