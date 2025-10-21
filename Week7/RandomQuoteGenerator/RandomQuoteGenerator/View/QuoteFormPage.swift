//
//  QuoteFormPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/15/25.
//

// 1) init
// 2) swift UI variables gets loaded
// 3) onAppear gets invoked

import SwiftUI

struct QuoteFormPage: View {
    @Environment(\.dismiss) private var dismiss

    @Environment(QuoteViewModel.self) var quoteViewModel

    var quote: Quote?
    @State var author = ""
    @State var message = ""

    var isNewQuote: Bool {
        quote == nil
    }

    init(quote: Quote? = nil) {
        self.quote = quote
    }

    var body: some View {
        VStack {
            Spacer()
            TextField("Author", text: $author)
                .padding()
                .background(.white)

            TextField("Message", text: $message, axis: .vertical)
                .padding()
                .background(.white)

            Button(isNewQuote ? "Create" : "Update") {
                if isNewQuote {
                    quoteViewModel.create(author: author, message: message)
                } else {
                    quoteViewModel.update(
                        newQuote: Quote(id: quote!.id, author: author, message: message)
                    )
                }

                author = ""
                message = ""
                dismiss()
            }
            .contentShape(Rectangle())
            .frame(maxWidth: .infinity)
            .padding()
            .background(.white)


            Spacer()
        }
        .padding()
        .background(.gray)
        .onAppear{
            if let quote {
                author = quote.author
                message = quote.message
            }
        }
    }
}

#Preview {
    QuoteFormPage()
        .environment(QuoteViewModel())
}
