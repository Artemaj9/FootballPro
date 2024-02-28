//
//  GameLogic.swift
//

import Foundation

class GameLogic: ObservableObject {
    @Published var size =  CGSize(width: 393, height: 852)
    @Published var energyLevel = 150
}
