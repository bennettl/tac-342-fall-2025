//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Bennett Lee on 8/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .foregroundColor(Color.yellow)
                .padding()
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hey whats up")
                .font(.largeTitle)
                .bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
