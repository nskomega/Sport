//
//  FootballScreen.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI

struct FootballScreen: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://www.prosoccer.gr/en/football/predictions/"))
            .navigationTitle("Football Predictions")
        }
    }
}

struct FootballScreen_Previews: PreviewProvider {
    static var previews: some View {
        FootballScreen()
    }
}
