//
//  AddQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/15/25.
//

import SwiftUI

struct AddQuotePage: View {
    @Environment(\.dismiss) private var dismiss

    @Environment(QuoteViewModel.self) var quoteViewModel
    @State var author = "Sample author"
    @State var message = "sample message"

    var body: some View {
        VStack {
            Spacer()
            TextField("Author", text: $author)
                .padding()
                .background(.white)

            TextField("Message", text: $message, axis: .vertical)
                .padding()
                .background(.white)

            Button("Create") {
                quoteViewModel.create(author: author, message: message)
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
    }
}

#Preview {
    AddQuotePage()
        .environment(QuoteViewModel())
}
