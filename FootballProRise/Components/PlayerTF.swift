//
//  PlayerTF.swift
//

import SwiftUI

struct PlayerTF: View {
    
    @State var isSelected = false
    @State var opacity: CGFloat = 0
   // @Binding var player: Int
    @Binding var text: String
    @FocusState private var isFocused: Bool
    var fontSize: CGFloat = 27
    @EnvironmentObject var vm: GameLogic
    
    
    var body: some View {
        VStack {
            ZStack {
                Image("tfbg")
                    .resizableToFit()
                    .animation(.easeInOut(duration: 1), value: isSelected)
                    .opacity(0)
            }
            .overlay {
                Text(vm.name)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.semibold, size: 16))
                    .padding(.leading)
                    .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                    .opacity(vm.lastNameEdited ? 1 : 0.3)
                    .offset(y: 2)
            }
        }
        .overlay {
            VStack {
                if #available(iOS 16.0, *) {
                    TextField("", text: $text)
                        .scrollContentBackground(.hidden)
                        .font(.custom(.semibold, size: 16))
                        .focused($isFocused)
                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                        .offset(y: 2)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .autocorrectionDisabled()
                        .multilineTextAlignment(.center)
                } else {
                    TextField("", text: $text)
                        .font(.custom(.semibold, size: 16))
                        .focused($isFocused)
                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                        .offset(y: 2)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .autocorrectionDisabled()
                        .multilineTextAlignment(.center)
                }
            }
            .padding(.top, 4)
        }
    }
}

#Preview {
    ZStack {
       Background(image: "lrbg")
        PlayerTF(text: .constant(""))
            .environmentObject(GameLogic())

    }
}
