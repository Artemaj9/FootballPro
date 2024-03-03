//
//  TrainOverView.swift
//

import SwiftUI

struct TrainOverView: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Background(image: "fieldbg")
            
            EnergyLevel()
                .offset(x: vm.size.width * 0.35, y: -vm.size.height*0.38)
            
            Image("overtrainrect")
                .resizableToFit()
                .frame(width: vm.size.width*0.85, height: vm.size.height*0.7)
                .offset(y: vm.size.height * 0.03)
                .opacity(0.71)
                .overlay(alignment: .bottom) {
                    VStack {
                        txtGrad
                            .frame(height: 120)
                            .mask {
                                Text("THE TRAINING\nIS OVER")
                                    .font(.custom(.black, size: 34))
                                    .multilineTextAlignment(.center)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                            }
                        
                        Text("Your score:")
                            .font(.custom(.regular, size: 22))
                            .foregroundStyle(Color("customWhite"))
                            .padding(.bottom, 4)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                        
                        Text("\(vm.trainScore)/5")
                            .font(.custom(.bold, size: 50))
                            .foregroundStyle(Color("customWhite"))
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                        
                        VStack(spacing: 0) {
                            Image("energylosebg")
                                .resizableToFit()
                                .frame(width:   vm.size.width*0.5)
                                .overlay {
                                    Text("- \(vm.totalEnergyLose)")
                                        .font(.custom(.regular, size: 28))
                                        .foregroundStyle(Color("customWhite"))
                                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                        .offset(x: -12)
                                }
                            
                            Image("moneywinbg")
                                .resizableToFit()
                                .frame(width:   vm.size.width*0.5)
                                .overlay {
                                    Text("+ \(vm.totalMonewWin)")
                                        .font(.custom(.regular, size: 28))
                                        .foregroundStyle(Color("customWhite"))
                                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                        .offset(x: -12)
                                }
                        }
                        .offset(x: 4)
                       
                        VStack(spacing: 4) {
                            Button {
                                vm.isEndTraining = false
                                vm.isQuestionView = false
                                vm.totalMonewWin = 0
                                vm.totalEnergyLose = 0
                                vm.trainScore = 0
                                vm.currentQuestion = 1
                                vm.questionNumber = 1
                                if vm.trainingsDone[vm.curTraining] < 4 {
                                    vm.trainingsDone[vm.curTraining] += 1
                                }
                                UserDefaultsService.shared.saveStructs(structs: vm.trainingsDone, forKey: "trainingsDone")
                            } label: {
                                 Image("continuebtn")
                                    .resizableToFit()
                            }
                            
                            Button {
                                vm.isEndTraining = false
                                vm.totalMonewWin = 0
                                vm.totalEnergyLose = 0
                                vm.trainScore = 0
                                vm.trainScore = 0
                                vm.currentQuestion = 1
                                vm.questionNumber = 1
                                vm.curTrainQuestion[vm.curTraining] = vm.trainingsDone[vm.curTraining]*5
                                vm.isQuestionView = true
                            } label: {
                                 Image("restartbtn")
                                    .resizableToFit()
                            }
                        }
                        .padding()
                    }
                }
        }
    }
}

#Preview {
    TrainOverView()
        .environmentObject(GameLogic())
}
