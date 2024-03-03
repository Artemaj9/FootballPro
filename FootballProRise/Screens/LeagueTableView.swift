//
//  LeagueTableViwq.swift
//

import SwiftUI

struct LeagueTableView: View {
    @EnvironmentObject var vm: GameLogic
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Background(image:"welcomebg")
            GradAnimation(color: "sea")
            Color("bluebg")
                .opacity(0.6)
            VStack {
                HStack {
                    Button {
                       dismiss()
                    } label: {
                        Image("backbtn")
                            .resizableToFit()
                            .frame(width: 45)
                    }
                
                    Spacer()
                    Text("LEAGUE TABLE")
                        .font(.custom(.bold, size: 25))
                        .foregroundStyle(Color("customWhite"))
                }
                .padding()
                .padding(.horizontal, 8)
                
                ScrollView(showsIndicators: false) {
                    Color.clear
                        .frame(height: 30)
                    ForEach (vm.stats) { stat in
                        LeagueTableCell(stat: stat)
                    }
                   
                    Color.clear
                        .frame(height: 80)
                }
                .mask {
                    ScrollGradient()
                }
                
                Spacer()
            }
            .padding(.top)
            .offset(y: vm.size.height * 0.1)
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    LeagueTableView()
        .environmentObject(GameLogic())
}
