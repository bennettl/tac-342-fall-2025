//
//  RandomQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import SwiftUI

struct RandomQuotePage: View {

    @Environment(QuoteViewModel.self) var quoteViewModel

    var body: some View {
        VStack(spacing: 12) {
            if let currentQuote = quoteViewModel.currentQuote {
                Text(currentQuote.message)
                    .font(.system(size: 24))
                    .multilineTextAlignment(.center)

                Text(currentQuote.author)
                    .font(.headline)
            }
            Divider()
            Button("Generate") {
                quoteViewModel.generate()
            }
            .font(.largeTitle)
            .padding(.top, 8)
        }
        .padding()
    }
}

#Preview {
    RandomQuotePage()
        .environment(QuoteViewModel())
}
