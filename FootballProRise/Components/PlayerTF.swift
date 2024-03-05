//
//  PlayerTF.swift
//

import SwiftUI

struct PlayerTF: View {
    
    @State var isSelected = false
    @State var opacity: CGFloat = 0
    @Binding var text: String
    @FocusState private var isFocused: Bool
    @EnvironmentObject var vm: GameLogic
    var fontSize: CGFloat = 27
    
    var body: some View {
        VStack {
            ZStack {
                Image("tfbg")
                    .resizableToFit()
                    .animation(.easeInOut(duration: 1), value: isSelected)
                    .opacity(1)
                
            }
            .overlay(alignment: .leading) {
                Text(text)
                    .foregroundStyle(Color("customWhite"))
                    .font(.custom(.medium, size: 16))
                    .opacity(isFocused || !text.isEmpty ? 0 : 1)
                    .padding()
            }
        }
        .overlay(alignment: .leading) {
            VStack(alignment: .leading) {
                if #available(iOS 16.0, *) {
                    TextField("", text: $text)
                        .scrollContentBackground(.hidden)
                        .foregroundStyle(Color("customWhite"))
                        .font(.custom(.medium, size: 16))
                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                        .focused($isFocused)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .autocorrectionDisabled()
                        .multilineTextAlignment(.leading)
                      
                } else {
                    TextField("", text: $text)
                        .foregroundStyle(Color("customWhite"))
                        .font(.custom(.medium, size: 16))
                        .padding(.leading)
                        .shadow(color: .black.opacity(0.23), radius: 2, y:2)
                        .focused($isFocused)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .autocorrectionDisabled()
                        .multilineTextAlignment(.leading)
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

