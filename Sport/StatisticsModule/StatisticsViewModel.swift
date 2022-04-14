//
//  StatisticsViewModel.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI
import Combine

class StatisticsViewModel: ObservableObject {

    let networking: Networking

    @Published
    var tennis: [Ranking] = []

    @Published
    var loadError: Networking.CommonError?

    init(networking: Networking) {
        self.networking = networking
    }

    func getTennis() {
        networking.getTennisAtp() { tennisResult in
            switch tennisResult {
            case .success(let tennisResponse):
                self.tennis = tennisResponse.results.rankings
                break
            case .failure(let error):
                self.tennis = []
                self.loadError = error
                break
            }

        }
    }
}
