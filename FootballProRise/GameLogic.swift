//
//  GameLogic.swift
//

import SwiftUI
import Combine

class GameLogic: ObservableObject {
    @Published var size =  CGSize(width: 393, height: 852)
    @Published var isSplash = true
    @AppStorage("isWelcome") var isWelcome = true

    @Published var selectedAnswer = 0
    
    @AppStorage("name") var name = "Andrew"
    @AppStorage("lastName") var lastName = "Dandrew"
    @AppStorage("Icon") var playerIcon = 0
    @AppStorage("balance") var balance = 1000
    @AppStorage("energylevel") var energyLevel = 150
    
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
    
    @Published var isTournament = true
    @AppStorage("league") var league = 1
    @Published var opponent = 4
    @Published var lastNutrition = 0
    
    // tournament
    
    @Published var score = 3
    @Published var oppponentScore = 2
    @Published var currentQuestion = 1
    @Published var isWin = false
    @Published var isGame = false
    @Published var isEndGame = false
    @Published var showResult = false
    var cancellables = Set<AnyCancellable>()
    @Published var welcomeCount: Double = 0
    @Published var welcomeOpacity: Double = 0
    
    @Published var nameEdited = false
    @Published var lastNameEdited = false
    @Published var showCongratulation = false
    @Published var count = 0
    @Published var stats =   [StatModel(league: "Apex Athletico", legueRank: 2, score: 4, opponent: "Urban Rabgers", opponentNumber: 3, opponentScore: 3, timeSec: 3123, date: Date.now), StatModel(league: "Apex Athletico", legueRank: 2, score: 4, opponent: "Urban Rabgers", opponentNumber: 3, opponentScore: 5, timeSec: 3, date: Date.now)]

    
    func resetGame() {
        score = 0
        oppponentScore = 0
        isWin = false
        isGame = false
        isEndGame = false
        showResult = false
        questionNumber = 1
        showCongratulation = false
        for item in cancellables {
            item.cancel()
        }
        count = 0
    }
    
    
    var gameQuestions = [QMod]()
    
    func shuffleQuestions() {
        gameQuestions = [QMod]()
        for i in 0...3 {
            for j in (0...19) {
                gameQuestions.append(allQuestions[i][j])
            }
        }
        gameQuestions.shuffle()
    }
    
    
    func setupTimer() {
        Timer
            .publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [unowned self] _ in
                    count += 1
            }
            .store(in: &cancellables)
    }
    
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
