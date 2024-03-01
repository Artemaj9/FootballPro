//
//  CongratulationsView.swift
//

import SwiftUI

struct CongratulationsView: View {
    @EnvironmentObject var vm: GameLogic
    @State var cupOffset: Double = 250
    @State var opacity: Double = 0
    @State var saturation: Double = 0
    @State var grayScale: Double = 1
    var body: some View {
        ZStack {
            
            Background(image: "fieldbg2")
                .saturation(saturation)
            Color("bluebg")
                .opacity(0.49)
            GradAnimation(color:"bluebg")
                .blendMode(.destinationOut)
                .rotationEffect(.degrees(180))
            
            
            
            VStack {
                txtGrad
                    .frame(height: 60)
                    .mask {
                        Text("CONGRATULATIONS!")
                            .font(.custom(.black, size: 29))
                            .multilineTextAlignment(.center)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 8, y: 8)
                    }
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 4, y: 4)
                Group {
                    Text("Your rank has been raised and you\nare ")
                    
                        .font(.custom(.regular, size: 20))
                    
                    + Text("moving to the next league!")
                        .font(.custom(.bold, size: 20))
                }
                
                .padding(.horizontal, 8)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.23), radius: 2, y: 2)
                
                Image("league\(vm.league)")
                    .resizableToFit()
                    .frame(width: vm.size.width * 0.53)
                    .padding(.top, 20)
                    .grayscale(grayScale)
                
                Text("Horizon\nHeroes")
                    .font(.custom(.bold, size: 37))
                    .lineSpacing(10)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.53), radius: 4, y: 4)
                    .offset(y: -12)
                
                Button {
                    
                } label: {
                    Text("Tap to continue")
                        .font(.custom(.extraBold, size: 23))
                        .opacity(0.5)
                        .padding(20)
                }
                .offset(y: -8)
                
            }
            .offset(y: -vm.size.height*0.08)
            
        }
        .overlay(alignment: .bottom) {
            ZStack {
                Image("endcup")
                    .resizableToFit()
                    .grayscale(grayScale)
                    .frame(height: vm.size.height * 0.32)
                    .opacity(vm.isWin ? 1 : 0.58)
                    .background {
                        if vm.isWin {
                            MagicGradient()
                                .saturation(1.5)
                                .blendMode(.hardLight)
                        }
                    }
            }
            .offset(y: cupOffset)
        }
        .foregroundStyle(Color("customWhite"))
        .multilineTextAlignment(.center)
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
        .onAppear {
            withAnimation(.spring(duration: 1).delay(1)) {
                cupOffset = 0
            }
            
            withAnimation(.easeInOut(duration: 3).delay(1.5)) {
                    saturation = 1
                grayScale = 0
            }
        }
    }
}

#Preview {
    CongratulationsView()
        .environmentObject(GameLogic())
}
