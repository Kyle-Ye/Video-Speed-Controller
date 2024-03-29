//
//  ContentView.swift
//  Video Speed Controller
//
//  Created by Kyle on 2023/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewRepresentable()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            AckTab()
                .tabItem {
                    Label("Acknowledgement", systemImage: "info.circle")                
                }
        }
        .tabViewStyle(.automatic)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
