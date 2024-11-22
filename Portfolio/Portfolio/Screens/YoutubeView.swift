//
//  YoutubeView.swift
//  Portfolio
//
//  Created by Shameem on 22/11/24.
//

import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
//        webView.configuration.preferences.javaScriptEnabled = true
        webView.scrollView.isScrollEnabled = false // Optional: Disable scrolling
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        // Load the YouTube video URL
        if let url = URL(string: "https://www.youtube.com/embed/\(videoID)?enablejsapi=1&autoplay=1&controls=1") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
