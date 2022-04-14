//
//  ContentView.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingDetails = false

    var body: some View {

        TabView() {
            StatisticsScreen()
                .tabItem {
                    Label("Statistics", systemImage: "logo.playstation")
                }
                .tag(0)
            ToursScreen()
                .tabItem {
                    Label("Players", systemImage: "person")
                }
                .tag(1)
            AnalysisScreen()
                .tabItem {
                    Label("Analysis", systemImage: "function")
                }
                .tag(2)
            WebViewScreen()
                .tabItem {
                    Label("WebView", systemImage: "externaldrive.connected.to.line.below")
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
