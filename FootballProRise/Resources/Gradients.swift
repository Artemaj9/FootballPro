//
//  Gradients.swift
//

import SwiftUI

let scrollGrad  = LinearGradient(
    colors: [
        Color.green,
        Color.blue,
        Color.green,
    ],
    startPoint: .top,
    endPoint: .bottom
)

let txtGrad = LinearGradient(
    colors: [
        Color("gradlight"),
        Color("gradbright")
    ],
    startPoint: .top,
    endPoint: .bottom
)

let grayGrad = LinearGradient(
    colors: [
        Color("graygrad"),
        Color("graygradbright")
    ],
    startPoint: .top,
    endPoint: .bottom
)
