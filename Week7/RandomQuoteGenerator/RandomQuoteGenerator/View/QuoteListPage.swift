//
//  QuoteListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import SwiftUI

struct QuoteListPage: View {
    @Environment(QuoteViewModel.self) var quoteViewModel

    var body: some View {
        NavigationStack {
            List(quoteViewModel.quotes) { quote in //, id: \.self, editActions: .delete) { $quote in
                VStack(alignment: .leading, spacing: 6) {
                    Text(quote.message)
                    Text(quote.author)
                        .font(.caption)
                }
            }
            .navigationTitle("Quotes")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Leading"){
//
//                    }
//                }
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button("Trailing"){
//
//                    }
//                }

                NavigationLink("Add") {
                    AddQuotePage()
                }
            }
        }

//        List(quotesViewModel.quotes) { quote in
//            VStack(alignment: .leading, spacing: 6) {
//                Text(quote.message)
//                Text(quote.author)
//                    .font(.caption)
//            }
//        }
    }
}

#Preview {
    QuoteListPage()
        .environment(QuoteViewModel())
}

