//
//  QuoteViewModel.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import Foundation
import Observation

@Observable
class QuoteViewModel {

    var quotes: [Quote]

    var currentIndex = 0

    var currentQuote: Quote? {
        if quotes.isEmpty {
            return nil
        }

        return quotes[currentIndex]
    }

    init() {
        self.quotes = [
            Quote(
                id: UUID(),
                author: "The Buddha",
                message: "The mind is everything. What you think you become"
            ),
            Quote(
                id: UUID(),
                author: "Walt Disney ",
                message: "If you can dream it, you can do it"
            ),
            Quote(
                id: UUID(),
                author: "Helen Keller ",
                message: "Keep your face always toward the sunshine, and shadows will fall behind you"
            ),
            Quote(
                id: UUID(),
                author: "Norman Vaughan ",
                message: "Dream big and dare to fail"
            ),
            Quote(
                id: UUID(),
                author: "Florence Nightingale",
                message: "I attribute my success to this: I never gave or took any excuse"
            ),
        ]
    }

    func generate() {
        let randomIndex = Int.random(in: 0..<quotes.count)

        currentIndex = randomIndex
    }


}
