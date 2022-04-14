//
//  AnalysisScreen.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI

struct AnalysisScreen: View {

    @State
    private var showsModalViewController = false

    var body: some View {

        NavigationView {
            VStack {
                Button(action: {
                    self.showsModalViewController = true
                }) {
                    Text("Модальное окно")
                }
            }
        }.sheet(isPresented: $showsModalViewController) {
            FootballScreen()
        }
    }
}

struct AnalysisScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisScreen()
    }
}
