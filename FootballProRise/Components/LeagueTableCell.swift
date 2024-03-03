//
//  LeagueTableCell.swift
//

import SwiftUI

struct LeagueTableCell: View {
    @EnvironmentObject var vm: GameLogic
    let stat: StatModel
    var body: some View {
       Rectangle()
            .fill(Color("cellcolor").opacity(0.4))
            .padding(.horizontal)
            .frame(width: vm.size.width*0.9, height: 80 * vm.coef)
     
            .overlay(alignment: .topLeading) {
                HStack {
                    
                    Image("league\(vm.league)")
                        .resizableToFit()
                        .frame(width: 30*vm.coef, height: 40*vm.coef)
                        .mask {
                            Circle()
                                .frame(width: 26*vm.coef, height: 26*vm.coef)
                        }
                       
                    Image("op\(vm.opponent)")
                        .resizableToFit()
                        .frame(width: 30, height: 45)
                        .mask {
                            Circle()
                                .frame(width: 26*vm.coef, height: 26*vm.coef)
                        }
                    
                    Text(stat.date.formatted(date: .numeric, time: .omitted))
                        .font(.custom(.bold, size: 11))
                        .padding(.trailing, 24)
                    Text(timeString(time: stat.timeSec))
                        .font(.custom(.regular, size: 11))
                    
                      
                }
                .padding(.leading, 24)
            }
            .overlay(alignment: .bottomLeading) {
                VStack(spacing: 2) {
                    
                         Rectangle()
                             .fill(Color("cellcolor").opacity(0.3))
                             .frame(width: vm.size.width*0.7, height: 20*vm.coef)
                        
                             .overlay(alignment: .leading) {
                                 Text("Apex Athletico")
                                     .padding(.leading, 4)
                                     .font(.custom(.regular, size: 10))
                             }
                             .padding(.leading)
                             .overlay(alignment: .trailing) {
                                 HStack {
                                     HStack(alignment: .center) {
                                         Text("Rank: ")
                                             .font(.custom(.regular, size: 8)) +
                                         Text("3")
                                             .font(.custom(.regular, size: 11))
                                         
                                     }
                                     .padding(.trailing, 24)
                                     HStack(alignment: .center) {
                                         Text("Score: ")
                                             .font(.custom(.regular, size: 8)) +
                                         Text("\(stat.score)")
                                             .font(.custom(.bold, size: 11))
                                         
                                     }
                                     .padding(.trailing, vm.size.width * 0.1)
                                 }
                                 
                             }
                   
                        Rectangle()
                            .fill(Color("cellcolor").opacity(0.3))
                            .frame(width: vm.size.width*0.7, height: 20*vm.coef)
                            .overlay(alignment: .leading) {
                                Text(stat.league)
                                    .padding(.leading, 4)
                                    .font(.custom(.regular, size: 10))
                            }
                            .padding(.leading)
                            .overlay(alignment: .trailing) {
                                HStack {
                                    HStack(alignment: .center) {
                                        Text("Rank: ")
                                            .font(.custom(.regular, size: 8)) +
                                        Text("\(stat.legueRank)")
                                            .font(.custom(.regular, size: 11))
                                        
                                    }
                                    .padding(.trailing, 24)
                                    HStack(alignment: .center) {
                                        Text("Score: ")
                                            .font(.custom(.regular, size: 8)) +
                                        Text("\(stat.opponentScore)")
                                            .font(.custom(.bold, size: 11))
                                        
                                    }
                                    .padding(.trailing, vm.size.width * 0.1)
                                }
                                
                            }
                    }
                }
            .overlay(alignment: .trailing) {
                Rectangle()
                    .fill(Color(stat.score > stat.opponentScore ? "tablegreen" : "tablered"))
                    .frame(width: 80*vm.coef, height: 80*vm.coef)
                    .overlay {
                        Text(stat.score > stat.opponentScore ? "\(stat.score * 100)" : "-")
                            .font(.custom(.bold, size: 18))

                        
                    }
            }
            .foregroundStyle(Color("customWhite"))
            }
    func timeString(time: Int) -> String {
          let hour = Int(time) / 3600
          let minute = Int(time) / 60 % 60
          let second = Int(time) % 60
        
          return String(format: "%02i:%02i:%02i", hour, minute, second)
      }
}

#Preview {
    ZStack {
        Background(image: "lrbg")
        LeagueTableCell(stat: StatModel(league: "Apex Athletico", legueRank: 2, score: 4, opponent: "Urban Rabgers", opponentNumber: 3, opponentScore: 3, timeSec: 3123, date: Date.now))
            .environmentObject(GameLogic())
    }
}
