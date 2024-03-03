//
//  StatModel.swift
//  FootballProRise
//
//  Created by Artem on 03.03.2024.
//

import Foundation

struct StatModel: Identifiable, Codable {
    let league: String
    let legueRank: Int
    let score: Int
    let opponent: String
    let opponentNumber: Int
    let opponentScore: Int
    let timeSec: Int
    let date: Date
    var id = UUID()
    
    static let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy"
            return formatter
        }()
    
}
