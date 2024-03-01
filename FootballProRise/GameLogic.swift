//
//  GameLogic.swift
//

import Foundation

class GameLogic: ObservableObject {
    @Published var size =  CGSize(width: 393, height: 852)
    @Published var energyLevel = 150
    @Published var nutritionOpacity = Array(repeating: 1.0, count: 12)
    @Published var balance = 1000
    @Published var isPlusEnergy = true
    @Published var trainingsDone = [3, 4, 0, 4]
    @Published var selectedAnswer = 0
}
