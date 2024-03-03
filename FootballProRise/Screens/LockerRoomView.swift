//
//  PrivateCabinetView.swift
//

import SwiftUI

struct LockerRoomView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Background(image: "lrbg")
            
            Button {
                dismiss()
            } label: {
                Image("backbtn")
                    .resizableToFill()
                    .frame(width: 50, height: 50)
            }
            .offset(x: -vm.size.width * 0.35, y: -vm.size.height*0.33)
            ZStack {
                borderGrad
                    .frame(width: vm.size.width*0.49, height: vm.size.height*0.2)
                    .mask {
                        Image("player\(vm.playerIcon)")
                            .resizableToFit()
                            .frame(width: vm.size.width * 0.4)
                            .scaleEffect(1.03)
                    }
                Image("player\(vm.playerIcon)")
                    .resizableToFit()
                    .frame(width: vm.size.width * 0.4)
                    .overlay(alignment: .bottomLeading) {
                        NavigationLink {
                            EditView()
                                .environmentObject(vm)
                        } label: {
                            Image("editbtn")
                                .resizableToFit()
                                .frame(width: 40)
                        }
                    
                        
                    }
            }
            .offset(y: -vm.size.height*0.3)
            EnergyLevel()
                .scaleEffect(1.2)
                .offset(x: vm.size.width*0.35, y: -vm.size.height*0.3)
                .environmentObject(vm)
            
            
            Image("lockernamebg")
                .resizableToFit()
                .overlay {
                    Text("\(vm.name) ")
                        .font(.custom(.regular, size: 20))
                    +
                    Text("\(vm.lastName)")
                        .font(.custom(.semibold, size: 20))
                }
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                .offset(y: -vm.size.height*0.15)
             
            VStack(spacing: 0) {
                HStack(spacing: 20) {
                    Image("bgstrength")
                        .resizableToFit()
                        .overlay(alignment:.top) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text("STRENGTH")
                                    .font(.custom(.black, size: 14))
                                HStack(alignment: .top, spacing: 20) {
                                    Text("\(vm.trainingsDone[0])")
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .font(.custom(.semibold, size: 12))
                                    
                                    Button {
                                        if vm.energyLevel >= 50 {
                                            vm.curTraining = 0
                                            vm.curTrainQuestion[0] = vm.trainingsDone[0]*5
                                            vm.isQuestionView = true
                                        }
                                    } label: {
                                        Image(vm.trainingsDone[0] != 4 ? "btnplay" :  "check")
                                            .resizableToFit()
                                            .frame(width: 45)
                                    }
                                    .disabled(vm.trainingsDone[0] == 4)
                                }
                            }
                            .padding(.top)
                        }
                    
                    Image("bgendurance")
                        .resizableToFit()
                        .overlay(alignment:.top) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text("ENDURANCE")
                                    .font(.custom(.black, size: 14))
                                HStack(alignment: .top, spacing: 20) {
                                    Text("\(vm.trainingsDone[1])")
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .font(.custom(.semibold, size: 12))
                                    
                                    Button {
                                        if vm.energyLevel >= 50 {
                                            vm.curTraining = 1
                                            vm.curTrainQuestion[1] = vm.trainingsDone[1]*5
                                            vm.isQuestionView = true
                                        }
                                    } label: {
                                        Image(vm.trainingsDone[1] != 4 ? "btnplay" :  "check")
                                            .resizableToFit()
                                            .frame(width: 45)
                                    }
                                    .disabled(vm.trainingsDone[1] == 4)
                                }
                            }
                            .padding(.top)
                        }
                }
                .padding(.horizontal)
                
                HStack(spacing: 20) {
                    Image("bgspeed")
                        .resizableToFit()
                        .overlay(alignment:.top) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text("SPEED")
                                    .font(.custom(.black, size: 14))
                                HStack(alignment: .top, spacing: 20) {
                                    Text("\(vm.trainingsDone[2])")
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .font(.custom(.semibold, size: 12))
                                    
                                    Button {
                                        if vm.energyLevel >= 50 {
                                            vm.curTraining = 2
                                            vm.curTrainQuestion[2] = vm.trainingsDone[2]*5
                                            vm.isQuestionView = true
                                        }
                                    } label: {
                                        Image(vm.trainingsDone[2] != 4 ? "btnplay" :  "check")
                                            .resizableToFit()
                                            .frame(width: 45)
                                    }
                                    .disabled(vm.trainingsDone[2] == 4)
                                }
                            }
                            .padding(.top)
                        }
                    Image("bgendurance")
                        .resizableToFit()
                        .overlay(alignment:.top) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text("KNOWLEDGE")
                                    .font(.custom(.black, size: 14))
                                HStack(alignment: .top, spacing: 20) {
                                    Text("\(vm.trainingsDone[3])")
                                        .font(.custom(.black, size: 12))
                                    +
                                    Text("/4 Done")
                                        .font(.custom(.semibold, size: 12))
                                    
                                    Button {
                                        if vm.energyLevel >= 50 {
                                            vm.curTraining = 3
                                            vm.curTrainQuestion[3] = vm.trainingsDone[3]*5
                                            vm.isQuestionView = true
                                        }
                                    } label: {
                                        Image(vm.trainingsDone[3] != 4 ? "btnplay" :  "check")
                                            .resizableToFit()
                                            .frame(width: 45)
                                    }
                                    .disabled(vm.trainingsDone[3] == 4)
                                }
                            }
                            .padding(.top)
                        }
                }
                .padding()
                
            Text("Current league:")
                    .font(.custom(.bold, size: 16))
                    .padding(.top)
                    .shadow(color: .black.opacity(0.23), radius: 1, y:1.3)
                
                HStack {
                    ForEach(1..<8) { i in
                    Image("l\(i)")
                            .resizableToFit()
                            .frame(width: i == 1 ? 45 : 33)
                            .opacity(vm.league != i ? 0.6 : 1)
                            .scaleEffect(vm.league != i ? 1 : 1.4)
                            .overlay {
                                if i < vm.league {
                                    Image("roundcheck")
                                        .resizableToFit()
                                        .frame(width: 20)
                                        .offset(y: -8)
                                }
                            }
                    }
                }
                .padding()
                NavigationLink {
                    LeagueTableView()
                        .environmentObject(vm)
                } label: {
                    Image("leaguetablbtn")
                        .resizableToFit()
                        .frame(width: vm.size.width*0.65)
                        .padding()
                }
                
            }
            .padding()
            .offset(y: vm.size.height*0.15)
            
            if vm.isQuestionView {
                TrainQuestionsView()
                    .environmentObject(vm)
            }
            
//            if  vm.showTbale {
//                LeagueTableView()
//                    .environmentObject(vm)
//            }
        }
        .foregroundStyle(Color("customWhite"))
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    LockerRoomView()
        .environmentObject(GameLogic())
}
