////
////  EffectService.swift
////  FootballProRise
////
////  Created by Artem on 29.02.2024.
////
//
//import Foundation
//
//final class EffectService {
//    
//    static let effect = EffectService()
//    
//    func getScrollOpacity(geometry: GeometryProxy) -> Double {
//        let maxY = UIScreen.main.bounds.height
//        let currentY = geometry.frame(in: .global).minY
//        let opacity: Double
//        
//        let yInitial = 0.35 * maxY
//        let yInitial2 = 0.01 * maxY
//        let yFinal = 0.60 * maxY
//        let yFinal2 = -0.2 * maxY
//        
//        let k = 1 / (yInitial - yFinal)
//        let kTop = 1 / (yInitial2 - yFinal2)
//        let b = -k * yFinal
//        let bTop = -kTop * yFinal2
//        
//        if currentY < yInitial && currentY > yInitial2 {
//            opacity = 1
//        } else if currentY >= yInitial {
//            opacity = k * currentY + b
//        } else {
//            opacity = kTop * currentY + bTop
//        }
//        return opacity
//    }
//    
//    func getScrollOpacityNew(geometry: GeometryProxy) -> Double {
//        let maxY = UIScreen.main.bounds.height
//        let currentY = geometry.frame(in: .global).minY
//        let opacity: Double
//        
//        let yInitial = 0.4 * maxY
//        let yInitial2 = 0.25 * maxY
//        let yFinal = 0.60 * maxY
//        let yFinal2 = 0.1 * maxY
//        
//        let k = 1 / (yInitial - yFinal)
//        let kTop = 1 / (yInitial2 - yFinal2)
//        let b = -k * yFinal
//        let bTop = -kTop * yFinal2
//        
//        if currentY < yInitial && currentY > yInitial2 {
//            opacity = 1
//        } else if currentY >= yInitial {
//            opacity = k * currentY + b
//        } else {
//            opacity = kTop * currentY + bTop
//        }
//        return opacity
//    }
//    
//}
