//
//  Quote.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import Foundation

struct Quote: Identifiable, Hashable, Codable {
    let id: UUID // universially unique identifier
    let author: String
    let message: String
}
