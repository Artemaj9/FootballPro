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
    
    
    // training
    
    @Published var totalEnergyLose = 10
    @Published var totalMonewWin = 150
    @Published var trainScore = 4
    
    
    // check view
    @Published var checkView = false
    @Published var isRigthAnswer = false
    
    //tournament check
    
    @Published var isToutnament = true
    @Published var league = 3
    @Published var opponent = 4
    
    // tournament
    
    @Published var score = 3
    @Published var oppponentScore = 2
    @Published var currentQuestion = 1
    @Published var isWin = true
    
}
