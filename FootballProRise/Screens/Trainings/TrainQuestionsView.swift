//
//  TrainQuestionsView.swift
//

import SwiftUI

struct TrainQuestionsView: View {
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Background(image: "bg\(trainingBg[vm.curTraining])q")
            VStack() {
                TrainingHeader(title: trainingBg[vm.curTraining].uppercased())
                    .environmentObject(vm)
                HStack {
                    Text("Question")
                        .font(.custom(.medium, size: 14))
                    +
                    Text(" \(vm.questionNumber)")
                        .font(.custom(.bold, size: 14))
                    +
                    Text("/5")
                        .font(.custom(.medium, size: 14))
                    Spacer()
                }
                .foregroundStyle(Color("customWhite"))
                .opacity(0.7)
                .padding(.top, vm.size.height*0.07)
                .padding(.bottom)
                .padding(.leading, 12)
                HStack {
                    Text(allQuestions[vm.curTraining][vm.curTrainQuestion[vm.curTraining]].question)
                        .foregroundStyle(Color("customWhite"))
                        .font(.custom(.medium, size: 24))
                        .lineSpacing(14)
                        .padding(.trailing)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 3, y: 3)
                    
                    Spacer()
                }
                .padding(.leading, 12)
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
                                }
                                .onTapGesture {
                                    
                                    if     vm.selectedAnswer != 1 {
                                        vm.selectedAnswer = 1
                                    } else {
                                        vm.selectedAnswer = 0
                                    }
                                }
                                .padding(6)
                                
                                Text(allQuestions[vm.curTraining][vm.curTrainQuestion[vm.curTraining]].answers[0])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
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
                                }
                                .onTapGesture {
                                    
                                    if     vm.selectedAnswer != 2 {
                                        vm.selectedAnswer = 2
                                    } else {
                                        vm.selectedAnswer = 0
                                    }
                                }
                                .padding(6)
                                Text(allQuestions[vm.curTraining][vm.curTrainQuestion[vm.curTraining]].answers[1])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
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
                                
                                Text(allQuestions[vm.curTraining][vm.curTrainQuestion[vm.curTraining]].answers[2])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
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
                                
                                
                                Text(allQuestions[vm.curTraining][vm.curTrainQuestion[vm.curTraining]].answers[3])
                                    .font(.custom(.regular, size: 19))
                                    .foregroundStyle(Color("customWhite"))
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 1, y: 1)
                                    .minimumScaleFactor(0.5)
                                    .lineLimit(1)
                                Spacer()
                                
                            }
                            .offset(y: -2)
                        }
                }
                .offset(y: vm.size.height * 0.05)
                
                Button {
                    if allQuestions[vm.curTraining][vm.curTrainQuestion[vm.curTraining]].rightanswerIndex == vm.selectedAnswer - 1 {
                        vm.isRigthAnswer = true
                        vm.balance += 50
                        vm.totalMonewWin += 50
                        vm.trainScore += 1
                    } else {
                        vm.isRigthAnswer = false
                        vm.energyLevel -= 10
                        vm.totalEnergyLose += 10
                    }
                    
                    vm.isTournament = false
                    vm.selectedAnswer = 0
                    withAnimation {
                        vm.checkView = true
                    }
                } label: {
                    Image("readybtn")
                        .resizableToFit()
                        .padding(.horizontal, 8)
                }
                    .offset(y: vm.size.height * 0.07)
                    
                
                Spacer()
            }
            .padding(.horizontal, 8)
            .offset(y: vm.size.height * 0.1)
            
            if vm.checkView {
                CheckView()
                    .environmentObject(vm)
            }
            
            if vm.isEndTraining  {
                TrainOverView()
                    .environmentObject(vm)
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TrainQuestionsView()
        .environmentObject(GameLogic())
}
