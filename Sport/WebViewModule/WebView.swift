//
//  WebView.swift
//  Sport
//
//  Created by Mikhail Danilov on 14.04.2022.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let url: URL?

    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(
            frame: .zero,
            configuration: config)
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let myURL = url  else { return }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
}
