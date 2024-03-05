//
//  EditView.swift
//

import SwiftUI
import Combine

struct EditView: View {
    @EnvironmentObject var vm: GameLogic
    @Environment(\.dismiss) var dismiss
    @State private var keyboardHeight: CGFloat = 0

    var body: some View {
        ZStack {
            Background(image: "lrbg")
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
                .overlay(alignment: .topTrailing) {
                    Button {
                        vm.name = vm.oldName
                        vm.lastName = vm.oldLastName
                        vm.playerIcon = vm.oldIcon
                        dismiss()
                    } label: {
                        Image("exit")
                            .resizableToFit()
                            .frame(width: 36, height: 36)
                            .padding(.horizontal, 30)
                            .padding(.top)
                    }
                    .opacity(keyboardHeight > 0 ? 0 : 1)
                    .animation(.easeOut, value: keyboardHeight)
                }
            AwesomeCarousel(itemHeight: vm.size.width > 380 ?  234 : 200, views: Array(repeating: AnyView(Text("")), count: 9))
                .environmentObject(vm)
                .padding(.horizontal, 80)
                .mask {
                    HorizontalScrollGrad()
                        .padding(0)
                }
                .offset(y: -vm.size.height*0.2)
                .opacity(keyboardHeight > 0 ? 0 : 1)
                .animation(.easeOut, value: keyboardHeight)
            
            
            ZStack(alignment: .leading) {
                Color.clear
                    .frame(height: 400)
                VStack(alignment: .leading) {
                    Text("Name")
                        .foregroundStyle(Color("customWhite"))
                        .font(.custom(.regular, size: 19))
                        .shadow(color: .black.opacity(0.23), radius: 1, y:1.3)
                    HStack {
                        PlayerTF(text: $vm.name)
                          //  .environmentObject(vm)
//                        Image("tfbg")
//                            .resizableToFit()
//                            .overlay(alignment: .leading) {
//                                Text("\(vm.name)")
//                                    .foregroundStyle(Color("customWhite"))
//                                    .font(.custom(.medium, size: 16))
//                                    .padding(.leading)
//                                    .shadow(color: .black.opacity(0.23), radius: 2, y:2)
//                            }
                        Button {
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
                        PlayerTF(text: $vm.lastName)
                            .environmentObject(vm)
//                        Image("tfbg")
//                            .resizableToFit()
//                            .overlay(alignment: .leading) {
//                                Text("\(vm.lastName)")
//                                    .foregroundStyle(Color("customWhite"))
//                                    .font(.custom(.semibold, size: 16))
//                                    .padding(.leading)
//                                    .shadow(color: .black.opacity(0.23), radius: 2, y:2)
//                                  //  .opacity(0.3)
//                            }
                        Button {
                            vm.lastName = lastnames.randomElement() ?? "Smith"
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
            .offset(y: keyboardHeight > 0 ? -vm.size.height*0.2 : 0)
            .animation(.easeOut, value: keyboardHeight)
            
            
            Button {
                if (vm.name != "" && vm.lastName != "") {
                    dismiss()
                }
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
            .opacity(keyboardHeight > 0 ? 0 : 1)
            .animation(.easeOut, value: keyboardHeight)
            .offset(y: vm.size.width > 380 ? vm.size.height * 0.32 : vm.size.height * 0.38)
            .opacity((vm.name != "" && vm.lastName != "") ? 1 : 0.6)
        }
        .onAppear {
            vm.oldIcon = vm.playerIcon
            vm.oldName = vm.name
            vm.oldLastName = vm.lastName
        }
        .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    EditView()
        .environmentObject(GameLogic())
}
