//
//  ContentView.swift
//  DataPersistenceDemo
//
//  Created by Bennett Lee on 10/6/25.
//

import SwiftUI


struct ContentView: View {
    @AppStorage("isDarkMode") var isDarkMode = false

    var body: some View {
        VStack {
            Spacer()
            Toggle("Is Dark Mode", isOn: $isDarkMode)
            Spacer()
        }
        .padding()
        .background(isDarkMode ? .black : .white)
        .colorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
