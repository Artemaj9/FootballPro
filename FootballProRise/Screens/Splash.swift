//
//  Splash.swift
//

import SwiftUI

struct Splash: View {
    var body: some View {
        Image("splash")
            .resizableToFill()
            .scaleEffect(1.01)
            .ignoresSafeArea()
        
    }
}

#Preview {
    Splash()
}
