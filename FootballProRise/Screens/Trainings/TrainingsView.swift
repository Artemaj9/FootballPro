//
//  TrainingsView.swift
//

import SwiftUI

struct TrainingsView: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Image("welcomebg")
                .resizableToFill()
                .scaleEffect(1.01)
            GradAnimation(color: "sea")
            
            VStack {
                TrainingHeader(title: "TRAININGS")
                    .environmentObject(GameLogic())

                
                HStack {
                    Image("strengthtrain")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.43)
                        .overlay(alignment: .bottom) {
                            VStack(spacing: 4) {
                                HStack {
                                    Text("\(vm.trainingsDone[0])")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.semibold, size: 12))
                                }
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                
                                Text("STRENGTH")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.black, size: 18))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                                Button {
                                    vm.curTraining = 0
                                    vm.curTrainQuestion[0] = vm.trainingsDone[0]*5
                                    vm.isQuestionView = true
                                } label: {
                                    Image(vm.trainingsDone[0] != 4 ? "gobtn" : "checkmarktrain")
                                        .resizableToFit()
                                }
                                .disabled(vm.trainingsDone[0] == 4)
                                .opacity(vm.trainingsDone[0] == 4 ? 0.8 : 1)
                         
                            }
                            .padding(.vertical)
                            .padding(.horizontal, 8)
                        }
                    
                    Image("endurancetrain")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.43)
                        .overlay(alignment: .bottom) {
                            VStack(spacing: 4) {
                                HStack {
                                    Text("\(vm.trainingsDone[1])")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.semibold, size: 12))
                                }
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                
                                Text("ENDURANCE")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.black, size: 18))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                                Button {
                                    vm.curTraining = 1
                                    vm.curTrainQuestion[1] = vm.trainingsDone[1]*5
                                    vm.isQuestionView = true
                                } label: {
                                    Image(vm.trainingsDone[1] != 4 ? "gobtn" : "checkmarktrain")
                                        .resizableToFit()
                                }
                                .disabled(vm.trainingsDone[1] == 4)
                                .opacity(vm.trainingsDone[1] == 4 ? 0.8 : 1)
                             
                            }
                            .padding(.vertical)
                            .padding(.horizontal, 8)
                        }
                }
                .padding(.top, vm.size.height * 0.06)
                
                
                HStack {
                    Image("speedtrain")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.43)
                        .overlay(alignment: .bottom) {
                            VStack(spacing: 4) {
                                HStack {
                                    Text("\(vm.trainingsDone[2])")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.semibold, size: 12))
                                }
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                
                                Text("SPEED")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.black, size: 18))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                                
                                Button {
                                    vm.curTraining = 2
                                    vm.curTrainQuestion[2] = vm.trainingsDone[2]*5
                                    vm.isQuestionView = true
                                } label: {
                                    Image(vm.trainingsDone[2] != 4 ? "gobtn" : "checkmarktrain")
                                        .resizableToFit()
                                }
                                .disabled(vm.trainingsDone[2] == 4)
                                .opacity(vm.trainingsDone[2] == 4 ? 0.8 : 1)
                            }
                            .padding(.vertical)
                            .padding(.horizontal, 8)
                        }
                    
                    Image("knowledgetrain")
                        .resizableToFit()
                        .frame(width: vm.size.width * 0.43)
                        .overlay(alignment: .bottom) {
                            VStack(spacing: 4) {
                                HStack {
                                    Text("\(vm.trainingsDone[3])")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.semibold, size: 12))
                                }
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                
                                Text("KNOWLEDGE")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.black, size: 18))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                                Button {
                                    vm.curTraining = 3
                                    vm.curTrainQuestion[2] = vm.trainingsDone[2]*5
                                    vm.isQuestionView = true
                                } label: {
                                    Image(vm.trainingsDone[3] != 4 ? "gobtn" : "checkmarktrain")
                                        .resizableToFit()
                                }
                                .disabled(vm.trainingsDone[3] == 4)
                                .opacity(vm.trainingsDone[3] == 4 ? 0.8 : 1)
                             
                            }
                            .padding(.vertical)
                            .padding(.horizontal, 8)
                        }
                }
                
                Spacer()
            }
            .offset(y: vm.size.height * 0.1)
            
            if vm.isQuestionView {
                TrainQuestionsView()
                    .environmentObject(vm)
            }
            
            if vm.isEndTraining {
                TrainOverView()
                    .environmentObject(vm)
            }
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
        .navigationBarHidden(true)
    }
}

#Preview {
    TrainingsView()
        .environmentObject(GameLogic())
}