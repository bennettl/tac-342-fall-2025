//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            Color.blue
            .tabItem{
                Label("Blue", systemImage: "folder")
            }
            Color.red.tabItem {
                Label("Red", systemImage: "text.document")
            }
            Color.green.tabItem{
                Label("Green", systemImage: "apple.terminal")
            }
        }
    }
}

#Preview {
    ContentView()
}
