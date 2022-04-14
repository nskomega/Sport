//
//  ToursViewModel.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI
import Combine

class ToursViewModel: ObservableObject {

    let networking: Networking

    @Published
    var tours: [FieldsTour] = []

    @Published
    var loadError: Networking.CommonError?

    init(networking: Networking) {
        self.networking = networking
    }

    func getTours() {
        networking.getTours() { toursResult in
            switch toursResult {
            case .success(let toursResult):
                self.tours = toursResult.results
                break
            case .failure(let error):
                self.tours = []
                self.loadError = error
                break
            }

        }
    }
}
