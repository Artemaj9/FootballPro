//
//  FoodSlot.swift
//

import SwiftUI

struct FoodSlot: View {
    let number: Int
    
    var body: some View {
        VStack(spacing: 4) {
            Image("food\(number)")
                .resizableToFit()
            Image("greenbtn")
                .resizableToFit()
                .overlay {
                    HStack {
                        Text("Get for ")
                            .font(.custom(.regular, size: 18))
                        +
                        Text("\(nutritions[number-1].price)")
                            .font(.custom(.extraBold, size: 18))
                        
                        Image("coin")
                            .resizableToFit()
                    }
                    .foregroundStyle(Color("customWhite"))
                }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    FoodSlot(number: 1)
}
