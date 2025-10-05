//
//  QuoteListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import SwiftUI

struct QuoteListPage: View {
    @State var quotesViewModel = QuoteViewModel()

    var body: some View {
        NavigationStack {
            List($quotesViewModel.quotes, id: \.self, editActions: .delete) { $quote in
                VStack(alignment: .leading, spacing: 6) {
                    Text(quote.message)
                    Text(quote.author)
                        .font(.caption)
                }
            }
            .navigationTitle("Quotes")
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
}
