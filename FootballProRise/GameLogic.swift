//
//  GameLogic.swift
//

import SwiftUI
import Combine

class GameLogic: ObservableObject {
    @Published var size =  CGSize(width: 393, height: 852)
    @Published var isSplash = true
    @Published var isWelcome = true
    

    @Published var selectedAnswer = 0
    
    @Published var name = "Andrew"
    @Published var lastName = "Dandrew"
    @Published var playerIcon = 0
    @Published var balance = 1000
    @Published var energyLevel = 150
    
    // nutrition
    @Published var nutritionOpacity = Array(repeating: 1.0, count: 12)
    @Published var isPlusEnergy = false
    
    // training
    @Published var trainingsDone = [0, 0, 0, 0]
    @Published var totalEnergyLose = 0
    @Published var totalMonewWin = 0
    @Published var trainScore = 0
   // @Published var currentTrainingQuestions = [QMod]()
    
    @Published var curTraining = 0
    @Published var curTrainQuestion = [0, 0, 0, 0]
    @Published var questionNumber = 1
    @Published var isEndTraining = false
    @Published var isQuestionView = false
    
    // check view
    @Published var checkView = false
    @Published var isRigthAnswer = false
    
    //tournament check
    
    @Published var isToutnament = true
    @Published var league = 1
    @Published var opponent = 4
    @Published var lastNutrition = 0
    
    // tournament
    
    @Published var score = 3
    @Published var oppponentScore = 2
    @Published var currentQuestion = 1
    @Published var isWin = true
    var cancellables = Set<AnyCancellable>()
    @Published var welcomeCount: Double = 0
    @Published var welcomeOpacity: Double = 0
    
    @Published var nameEdited = false
    @Published var lastNameEdited = false
    
    
    
    
    func setupWelcomeTimer() {
        Timer
            .publish(every: 0.1, on: .main, in: .common)
            .autoconnect()
            .sink { [unowned self] _ in
                if welcomeCount < 1 {
                    welcomeCount += 0.1
              
                    if welcomeOpacity < 0.9 {
                        welcomeOpacity += 0.1
                    }

                } else  {
                    for item in cancellables {
                        item.cancel()
                    }
                }
            }
            .store(in: &cancellables)
    }
}
