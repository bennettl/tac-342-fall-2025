//
//  ContentView.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import SwiftUI

struct ContentView: View {
    @State var quoteViewModel = QuoteViewModel()

    var body: some View {
        TabView {
            QuoteListPage()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
            RandomQuotePage()
                .tabItem{
                    Label("Random", systemImage: "quote.opening")
                }
        }
        .environment(quoteViewModel)
    }
}

#Preview {
    ContentView()
}
