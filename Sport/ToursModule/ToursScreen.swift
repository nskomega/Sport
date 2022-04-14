//
//  ToursScreen.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI

struct ToursScreen: View {

    @StateObject
    var viewModel: ToursViewModel = ToursViewModel.init(networking: Networking.init())

    var body: some View {

        Group {
            List(viewModel.tours) { tour in
                HStack {
                    Text("\(tour.tourCode)")
                    Spacer()
                    Text(tour.tourName)
                    Spacer()
                    Text(tour.tourDesc)
                }
            }

        }.onAppear {
            viewModel.getTours()
            }
    }
}

struct ToursScreen_Previews: PreviewProvider {
    static var previews: some View {
        ToursScreen()
    }
}
