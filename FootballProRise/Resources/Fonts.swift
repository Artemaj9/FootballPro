//
//  Fonts.swift
//

import SwiftUI

enum CustomFont: String {
    case extraBold = "Spartan-ExtraBold"
    case bold = "Spartan-Bold"
    case semibold = "Spartan-SemiBold"
    case medium = "Spartan-Medium"
    case regular = "Spartan-Regular"
    case black = "Spartan-Black"
}

extension Font {
    static func custom(_ font: CustomFont, size: CGFloat) -> Font {
        Font.custom(font.rawValue, size: size)
    }
}
