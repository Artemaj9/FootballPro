//
//  Fonts.swift
//

import SwiftUI

enum CustomFont: String {
    case extraBold = "Spartan-ExtraBold"
    case bold = "Spartan-Bold"
    case regular = "Spartan-Regular"
}

extension Font {
    static func custom(_ font: CustomFont, size: CGFloat) -> Font {
        Font.custom(font.rawValue, size: size)
    }
}
