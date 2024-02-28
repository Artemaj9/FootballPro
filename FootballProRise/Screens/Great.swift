//
//  Great.swift
//

import SwiftUI

struct Great: View {
    
    @EnvironmentObject var vm: GameLogic
    
    var body: some View {
        ZStack {
            Image("welcomebg")
                .resizableToFill()
                .ignoresSafeArea()
                .scaleEffect(1.01)
            GradAnimation(color: "sea")
            
            VStack(alignment: .leading) {
                Text( WelcomeTxt.great)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.extraBold, size: 27))
                    .shadow(color: .black.opacity(0.23), radius: 2, y:3)
                
                Text(WelcomeTxt.greatdescr)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.regular, size: 19))
                    .shadow(color: .black.opacity(0.23), radius: 1, y:1.3)
                    .padding(.top, 8)
            }
            .offset(y: -vm.size.height * 0.34)
            .offset(x: -vm.size.width * 0.1)
            
            
            Image("player5")
                .resizableToFit()
                .frame(width: vm.size.width * 0.5)
                .offset(y: -vm.size.height * 0.15)
            
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
                                    Text("John")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.medium, size: 16))
                                        .padding(.leading)
                                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                                }
                            Button {
                                
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
                                    Text("John")
                                        .foregroundStyle(Color("customWhite"))
                                        .font(.custom(.semibold, size: 16))
                                        .padding(.leading)
                                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                                        .opacity(0.3)
                                }
                            Button {
                                
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
            
            Button {
                
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
        
                .offset(y: vm.size.height * 0.3)
        
        }
    }
        
}

#Preview {
    Great()
        .environmentObject(GameLogic())
}
