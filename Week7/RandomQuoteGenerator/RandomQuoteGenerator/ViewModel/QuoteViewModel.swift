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

    var quotes: [Quote] {
        didSet {
            save()
        }
    }

    var fileUrl: URL
    var currentIndex = 0

    var currentQuote: Quote? {
        if quotes.isEmpty {
            return nil
        }

        return quotes[currentIndex]
    }

    init() {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let filePath = "\(documentsDirectory)quotes.json"

        let fileUrl = URL(string: filePath)!

        do {
            // 1. First a place to load the data (done in initializer)
            let data = try Data(contentsOf: fileUrl)

            // 2. Convert JSON > Swift
            let decoder = JSONDecoder()
            let quotes = try decoder.decode(Array<Quote>.self, from: data)

            // 3. Set our properties to native swift object
            self.quotes = quotes
        } catch {
            print(error)

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
        self.fileUrl = fileUrl

//        // 1. Find a location to save
//        let documentsDiectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
//        // /path/to/documents/directory + "filename"
//        let filePath = "\(documentsDiectory)my-file.txt"
//
//        // 2. Convert the object to Data
//        let somethingToSave = "somethingToSave"
//
//        // 3. Write to disk
//        do {
//            let url = URL(string: filePath)!
//            try somethingToSave.write(to: url, atomically: true, encoding: .utf8)
//        } catch {
//           print("Could not save to file \(error)")
//        }

    }

    func save() {
        do {
            // 1. Find a place to save it (done this initializer)

            // 2 convert our array of quotes to binary
            let encoder = JSONEncoder()
            let data = try encoder.encode(quotes)

            // 3. write the binary data to disk
            try data.write(to: fileUrl)

        } catch {
            print(error)
        }
    }

    func generate() {
        let randomIndex = Int.random(in: 0..<quotes.count)

        currentIndex = randomIndex
    }

    func create(author: String, message: String) {
        // Ideally, do some sort of validation,
        if author.isEmpty || message.isEmpty {
            return
        }

        let quote = Quote(id: UUID(), author: author, message: message)
        quotes.append(quote)
    }

    func update(newQuote: Quote) {
        // Find the index for a given id
        guard let index = quotes.firstIndex(where: { quote in quote.id == newQuote.id }) else {
            return
        }

        quotes[index] = newQuote
    }


}
