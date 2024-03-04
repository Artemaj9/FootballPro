//
//  Welcome.swift
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject var vm: GameLogic
    @State var welcomeScreen = 1
    @State var saturation: Double = 0
    @State var animationFlag = false
    
    var body: some View {
        ZStack {
            Image("welcomebg")
                .resizableToFill()
                .scaleEffect(1.01)
          //  GradAnimation(color: "sea")
            
            if animationFlag {
                GradAnimation(color: "sea", delay: 0.7)
                    .opacity(0.4)
                    .transition(.opacity)
            }
            // txt screen1
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
            .offset(y: vm.size.width > 380 ? -vm.size.height * 0.25 : -vm.size.height * 0.3)
            .offset(x: welcomeScreen != 1 ? 700 : 0)
            .opacity(welcomeScreen == 1 ? 1 : 0)
            .animation(.easeIn, value: welcomeScreen)
            
            
            // txt screen2
            VStack(alignment: .leading) {
                Text(WelcomeTxt.title)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.extraBold, size: 27))
                
                Text(WelcomeTxt.kicksub)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.regular, size: 19))
                    .padding(.top, 2)
                
                Text(WelcomeTxt.kickOff)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.regular, size: 19))
                    .padding(.top, 16)
            
            }
            .padding()
            .offset(y: vm.size.width > 380 ? -vm.size.height * 0.25 : -vm.size.height * 0.3)
            .offset(x: welcomeScreen == 1 ? -700 : welcomeScreen == 2 ? 0 : 700)
            .opacity(welcomeScreen == 2 ? 1 : 0)
            .animation(.easeIn, value: welcomeScreen)
        
            
            //txt screen3
            VStack(alignment: .leading) {
                Text( WelcomeTxt.great)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.extraBold, size: 27))
                    .shadow(color: .black.opacity(0.23), radius: 2, y:3)
                
                Text(WelcomeTxt.greatdescr)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.regular, size: 19))
                    .shadow(color: .black.opacity(0.23), radius: 1, y:1.3)
                    .padding(.top, 2)
            }
            .offset(y: vm.size.width > 380 ? -vm.size.height * 0.3 : -vm.size.height * 0.35)
            .offset(x: -vm.size.width * 0.1)
            .opacity(welcomeScreen == 3 ? 1 : 0)
            .offset(x: welcomeScreen != 3 ? -700 : 0)
            .animation(.easeInOut, value: welcomeScreen)
            
            
            
            
            AwesomeCarousel(itemHeight: vm.size.height*0.3, views: Array(repeating: AnyView(Text("")), count: 9))
                .environmentObject(vm)
                .opacity(welcomeScreen == 2 ? 1 : 0)
                .saturation(saturation)
                .animation(.easeInOut(duration: 1), value: welcomeScreen)
                .animation(.easeInOut(duration: 1).delay(0.5), value: saturation)
            
            // screen 3
            ZStack {
                Image("player\(vm.playerIcon)")
                    .resizableToFit()
                    .frame(width: vm.size.width * 0.5)
                    .offset(y: vm.size.width > 380 ? -vm.size.height * 0.15 : -vm.size.height * 0.18)
                
                ZStack(alignment: .leading) {
                    Color.clear
                        .frame(height: 400)
                    VStack(alignment: .leading) {
                        Text("Name")
                            .foregroundStyle(Color("customWhite"))
                            .font(.custom(.regular, size: 19))
                            .shadow(color: .black.opacity(0.23), radius: 1, y:1.3)
                        HStack {
                            Image("tfbg")
                                .resizableToFit()
                                .overlay(alignment: .leading) {
                                    Text("\(vm.name)")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.medium, size: 16))
                                        .padding(.leading)
                                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                                        .opacity(vm.nameEdited ? 1 : 0.3)
                                        .animation(.easeInOut, value: vm.nameEdited)
                                        .offset(y: 2)
                                }
                            Button {
                                vm.nameEdited = true
                                vm.name = names.randomElement() ?? "John"
                            } label: {
                                Image("editbg")
                                    .resizableToFit()
                                    .frame(width: 40)
                            }
                            
                        }
                        .padding(.bottom, 12)
                        
                        
                        Text("Surname")
                            .foregroundStyle(Color("customWhite"))
                            .font(.custom(.regular, size: 19))
                            .shadow(color: .black.opacity(0.23), radius: 1, y:1.3)
                        HStack {
                                    Image("tfbg")
                                        .resizableToFit()
                                        .overlay(alignment: .leading) {
                                            Text("\(vm.lastName)")
                                                .foregroundStyle(Color("customWhite"))
                                                .font(.custom(.semibold, size: 16))
                                                .padding(.leading)
                                                .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                                                .opacity(vm.lastNameEdited ? 1 : 0.3)
                                                .offset(y: 2)
                                        }
                                    
                                    Button {
                                        vm.lastName = lastnames.randomElement() ?? "Smith"
                                        vm.lastNameEdited = true
                                    } label: {
                                        Image("editbg")
                                            .resizableToFit()
                                            .frame(width: 40)
                                    }
                                }
                        }
                    .offset(y: vm.size.height * 0.07)
                }
                .padding(36)
            }
            .offset(y: vm.size.height*0.05)
            .opacity(welcomeScreen == 3 ? 1 : 0)
            .animation(.easeInOut, value: vm.lastNameEdited)
            .animation(.easeInOut(duration: 2), value: welcomeScreen)
            
            Button {
                welcomeScreen = 2
                saturation = 1
            } label: {
                ZStack {
                    Text("Tap to continue")
                        .font(.custom(.extraBold, size: 23))
                        .foregroundStyle(Color("customWhite").opacity(0.6))
                        .padding(40)
                }
            }
            .offset(y: vm.size.height * 0.3)
            .opacity(welcomeScreen == 1 ? 1 : 0)
            .animation(.easeInOut(duration: 1),value: welcomeScreen)
            
            
            Button {
                welcomeScreen = 3
                withAnimation {
                    animationFlag = true
                }
            } label: {
                Image("btnrect")
                    .resizableToFit()
                    .frame(height: 60)
                    .overlay {
                        Text("Next step")
                            .foregroundStyle(Color("customWhite"))
                            .font(.custom(.extraBold, size: 25))
                            .shadow(color: .black.opacity(0.23), radius: 2, y:3)
                    }
            }
            .opacity(welcomeScreen == 2 ? 1 : 0)
            .animation(.easeInOut(duration: 1).delay(1.5),value: welcomeScreen)
            .scaleEffect(welcomeScreen == 3 ? 0 : 1)
            .offset(y: vm.size.height * 0.3)
            
            Button {
                if vm.lastNameEdited && vm.nameEdited {
                    withAnimation {
                        vm.isWelcome = false
                    }
                }
            } label: {
                Image("btnrect")
                    .resizableToFit()
                    .frame(height: 60)
                    .overlay {
                        Text("I'm ready")
                            .foregroundStyle(Color("customWhite"))
                            .font(.custom(.extraBold, size: 25))
                            .shadow(color: .black.opacity(0.23), radius: 2, y:3)
                    }
            }
            .offset(y: vm.size.width > 380 ? vm.size.height * 0.3 : vm.size.height * 0.35)
            .opacity(welcomeScreen == 3 ? 1 : 0)
            .animation(.easeIn(duration: 1), value: welcomeScreen)
            .opacity(vm.lastNameEdited && vm.nameEdited ? 1 : 0.5)
            .animation(.easeIn(duration: 1), value: vm.lastNameEdited && vm.nameEdited)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Welcome()
        .environmentObject(GameLogic())
}
