//
//  StatisticsScreen.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI

struct StatisticsScreen: View {

    @StateObject
    var viewModel: StatisticsViewModel = StatisticsViewModel.init(networking: Networking.init())

    var body: some View {

        Group {
            List(viewModel.tennis) { rank in
                HStack {
                    Text("\(rank.ranking)")
                    Spacer()
                    Text(rank.firstName)
                    Text(rank.lastName)
                    Spacer()
                    Text("\(rank.rankingPoints)")
                }
            }

        }.onAppear {
                viewModel.getTennis()
            }
    }
}

struct StatisticsScreen_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsScreen()
    }
}
