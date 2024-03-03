//
//  InfoView.swift
//

import SwiftUI

struct InfoView: View {
    @EnvironmentObject var vm: GameLogic
    @State private var isOpen = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Background(image: "welcomebg")
                .overlay(alignment: .topTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image("exit")
                            .resizableToFit()
                            .frame(width: 36, height: 36)
                            .padding(.horizontal, 30)
                            .padding(.top)
                    }
                }
              
            VStack {
                Text(InfoTxt.welcome)
                    .font(.custom(.bold, size: 20))
                    .padding()
                ScrollView(showsIndicators: false) {
                    
                    Text(InfoTxt.subTitle)
                        .font(.custom(.regular, size: 17))
                        .padding()
                    
                    Button {
                        withAnimation(.easeInOut) {
                            isOpen.toggle()
                        }
                     
                    } label: {
                        Image("morebtn")
                            .resizableToFit()
                            .padding(.leading)
                            .padding(.trailing, 8)
                            .overlay (alignment: .trailing){
                                Image("triangle")
                                    .resizableToFit()
                                    .frame(width: 24, height: 20)
                                    .rotationEffect(.degrees(isOpen ? 180 : 0))
                                    .padding(.trailing, 35)
                                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.53), radius: 1, y: 1)
                            }
                    }
                    
                    if isOpen {
                        VStack(alignment: .leading, spacing: 30) {
                            ForEach(0..<7) { i in
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    Text(InfoTxt.titles[i])
                                        .font(.custom(.bold, size: 20))
                                    Text(InfoTxt.more[i])
                                        .font(.custom(.regular, size: 17))
                                }
                                .padding(.horizontal, 16)
                            }
                        }
                        .padding(.top)
                        .background(Color("grasscolor").opacity(0.2))
                        .padding(.horizontal)
                        .offset(y: -8)
                        .transition(.opacity)
            
                    }
                    
                
                    
                    
                    Text(InfoTxt.section1)
                        .font(.custom(.regular, size: 17))
                        .padding()
                    
                    Text(InfoTxt.section2)
                        .font(.custom(.regular, size: 17))
                        .padding()
                    
                    Text(InfoTxt.section3)
                        .font(.custom(.regular, size: 17))
                        .padding()
                    
                    Color.clear
                        .frame(height: 80)
                }
                .padding(.top)
                .mask {
                    ScrollGradient()
                }
                .offset(y: -16)
            }
                    .foregroundStyle(Color("customWhite"))
                    .padding(.horizontal)
                    .offset(y: vm.size.height*0.05)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.53), radius: 2, y: 2)
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    InfoView()
        .environmentObject(GameLogic())
}
