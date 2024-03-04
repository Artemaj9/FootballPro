//
//  MenuView.swift
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var vm: GameLogic
    var body: some View {
        NavigationView {
            ZStack {
                Background(image: "welcomebg")
                    .saturation(1.2)
                GradAnimation(color: "sea")
                
                VStack(spacing: 8) {
                    Image("playerinfobg")
                        .resizableToFit()
                        .padding(.trailing, 8)
                        .overlay(alignment: .top) {
                            Image("playernamebg")
                                .resizableToFit()
                                .padding([.leading, .top], 8)
                                .overlay(alignment: .leading) {
                                    HStack {
                                        Text(vm.name + " ")
                                            .font(.custom(.regular, size: 20))
                                        +
                                        Text(vm.lastName)
                                            .font(.custom(.semibold, size: 20))
                                    }
                                    .padding(.leading, 24)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                                    .offset(y: 4)
                                }
                        }
                        .overlay(alignment: .trailing) {
                            Image("player\(vm.playerIcon)")
                                .resizableToFit()
                                .scaleEffect(0.9)
                                .padding(.trailing, 8)
                                .overlay(alignment: .bottomTrailing) {
                                    NavigationLink {
                                        InfoView()
                                            .environmentObject(vm)
                                    } label: {
                                        Image("infobtn")
                                            .resizableToFit()
                                            .frame(width: 48)
                                    }
                                        .offset(x: -12)
                                }
                        }
                        .overlay(alignment: .leading) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image("league\(vm.league)")
                                        .resizableToFit()
                                        .frame(width: 40)
                                    
                                    VStack(alignment: .leading) {
                                        Text("League:")
                                            .font(.custom(.regular, size: 12))
                                            .offset(y: -2)
                                        Text(legueName[vm.league-1])
                                            .font(.custom(.semibold, size: 12))
                                            .offset(y: 2)
                                    }
                                }
                            }
                            .padding(.leading)
                            .padding(.top, 4)
                            
                        }
                        .overlay(alignment: .bottomLeading) {
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
                                .padding(.bottom, 8)
                                .padding(.leading)
                        }
                    HStack(alignment: .bottom, spacing: vm.size.width > 380 ? 16 : 28) {
                        Image("trainings")
                            .resizableToFit()
                            .overlay(alignment: .bottomTrailing) {
                                NavigationLink {
                                    TrainingsView()
                                        .environmentObject(vm)
                                } label: {
                                    Image("gobtn")
                                        .resizableToFit()
                                        .padding(vm.size.width > 380 ? 24 : 12)
                                }
                                    .offset(x: 12, y: 8)
                            }
                        Image("nutrition")
                            .resizableToFit()
                            .padding(.top, vm.size.width > 380 ? 0 : 14)
                            .overlay(alignment: .bottomTrailing) {
                                NavigationLink {
                                    NutritionView()
                                        .environmentObject(vm)
                                } label: {
                                    Image("choosebtn")
                                        .resizableToFit()
                                        .padding(vm.size.width > 380 ? 24 : 12)
                                }
                                .offset(x: vm.size.width > 380 ? -12 : -4, y: 8)
                            }
                    }
                    
                    Image("lockerroom")
                        .resizableToFit()
                        .overlay(alignment: .trailing) {
                            NavigationLink {
                                LockerRoomView()
                                    .environmentObject(vm)
                            } label: {
                                Image("toroom")
                                    .resizableToFit()
                                    .frame(width: 36, height: 36)
                            }
                                .offset(x: 8)
                        }
                        .padding(.horizontal, 24)
                    
                    Image("tournamentlayer")
                        .resizableToFit()
                        .padding(.horizontal, vm.size.width > 380 ? 20 : 12)
                        .padding(.vertical, 8)
                        .overlay(alignment: .trailing) {
                            Image("menucup")
                                .resizableToFit()
                                .scaleEffect(vm.size.width > 380 ? 1.15 : 1)
                                .offset(x: -10, y: -40)
                        }
                        .overlay(alignment:.bottom) {
                            NavigationLink {
                                TournamentView()
                                    .environmentObject(vm)
                            } label: {
                                Image("startbtn")
                                    .resizableToFit()
                                    .padding(24)
                            }
                            .padding(.horizontal, 8)
                        }
                        .overlay(alignment: .leading) {
                            if vm.league < 7 {
                                HStack {
                                    
                                    if vm.league < 7 {
                                        Image("league\(vm.league + 1)")
                                            .resizableToFit()
                                            .frame(width: 40)
                                    }
                                    
                                    
                                    VStack(alignment: .leading) {
                                        Text("Next level:")
                                            .font(.custom(.regular, size: 12))
                                            .offset(y: -2)
                                        
                                        
                                        Text(vm.league < 7 ? legueName[vm.league] : legueName[vm.league - 1])
                                            .font(.custom(.semibold, size: 14))
                                            .offset(y: 2)
                                    }
                                }
                                .padding(.horizontal, vm.size.width > 380 ? 44 : 30)
                                .padding(.top, 24)
                            }
                        }
                }
                .padding(.top)
            }
            .foregroundStyle(Color("customWhite"))
            .ignoresSafeArea()
            .onAppear {
                vm.stats = UserDefaultsService.shared.getStructs(forKey: "stats") ?? [StatModel]()
                vm.trainingsDone = UserDefaultsService.shared.getStructs(forKey: "trainingsDone") ??  [0, 0, 0, 0]
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    MenuView()
        .environmentObject(GameLogic())
}
