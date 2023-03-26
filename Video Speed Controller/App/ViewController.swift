//
//  ViewController.swift
//  Shared (App)
//
//  Created by Kyle on 2021/10/1.
//

import SwiftUI
import WebKit

#if os(iOS)
import UIKit
typealias PlatformViewController = UIViewController
typealias PlatformViewRepresentable = UIViewRepresentable
#elseif os(macOS)
import Cocoa
import SafariServices
typealias PlatformViewController = NSViewController
typealias PlatformViewRepresentable = NSViewRepresentable
#endif

let extensionBundleIdentifier = "top.kyleye.videospeedcontroller.Extension"

struct ViewRepresentable: PlatformViewRepresentable {
    #if os(iOS)
    func makeUIView(context: Context) -> WKWebView { makeView(context: context) }
    func updateUIView(_: WKWebView, context _: Context) {}
    #elseif os(macOS)
    func makeNSView(context: Context) -> WKWebView { makeView(context: context) }
    func updateNSView(_: WKWebView, context _: Context) {}
    #endif

    func makeView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        #if os(iOS)
        webView.scrollView.isScrollEnabled = false
        #endif
        webView.configuration.userContentController.add(context.coordinator, name: "controller")
        webView.loadFileURL(Bundle.main.url(forResource: "Main", withExtension: "html")!, allowingReadAccessTo: Bundle.main.resourceURL!)
        return webView
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, WKNavigationDelegate, WKScriptMessageHandler {
        func webView(_ webView: WKWebView, didFinish _: WKNavigation!) {
            #if os(iOS)
            webView.evaluateJavaScript("show('ios')")
            #elseif os(macOS)
            webView.evaluateJavaScript("show('mac')")

            SFSafariExtensionManager.getStateOfSafariExtension(withIdentifier: extensionBundleIdentifier) { state, error in
                guard let state, error == nil else {
                    // Insert code to inform the user that something went wrong.
                    return
                }

                DispatchQueue.main.async {
                    webView.evaluateJavaScript("show('mac', \(state.isEnabled)")
                }
            }
            #endif
        }

        func userContentController(_: WKUserContentController, didReceive message: WKScriptMessage) {
            #if os(macOS)
            if message.body as! String != "open-preferences" {
                return
            }

            SFSafariApplication.showPreferencesForExtension(withIdentifier: extensionBundleIdentifier) { error in
                guard error == nil else {
                    // Insert code to inform the user that something went wrong.
                    return
                }
                DispatchQueue.main.async {
                    NSApplication.shared.terminate(nil)
                }
            }
            #endif
        }
    }
}
