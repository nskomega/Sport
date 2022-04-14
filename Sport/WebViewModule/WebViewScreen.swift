//
//  WebViewScreen.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI

struct WebViewScreen: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://www.flashscore.ru.com/tennis/"))
            .navigationTitle("FlashScore Tennis")
        }
    }
}

struct WebViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        WebViewScreen()
    }
}
