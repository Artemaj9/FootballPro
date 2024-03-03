//
//  EditView.swift
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var vm: GameLogic
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Background(image: "lrbg")
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
            AwesomeCarousel(itemHeight: 234, views: Array(repeating: AnyView(Text("")), count: 9))
                .environmentObject(vm)
                .padding(.horizontal, 80)
                .mask {
                    HorizontalScrollGrad()
                        .padding(0)
                }
                .offset(y: -vm.size.height*0.2)
            
            
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
                                Text("\(vm.lastName)")
                                    .foregroundStyle(Color("customWhite"))
                                    .font(.custom(.semibold, size: 16))
                                    .padding(.leading)
                                    .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                                  //  .opacity(0.3)
                            }
                        Button {
                            
                        } label: {
                            Image("editbg")
                                .resizableToFit()
                                .frame(width: 40)
                        }
                    }
                }
                .offset(y: vm.size.height * 0.14)
                
            }
            .padding(36)
            
            
            Button {
                
            } label: {
                Image("btnrect")
                    .resizableToFit()
                    .frame(height: 60)
                    .overlay {
                        Text("Save")
                            .foregroundStyle(Color("customWhite"))
                            .font(.custom(.extraBold, size: 25))
                            .shadow(color: .black.opacity(0.23), radius: 2, y:3)
                    }
            }
            
            .offset(y: vm.size.height * 0.32)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    EditView()
        .environmentObject(GameLogic())
}
