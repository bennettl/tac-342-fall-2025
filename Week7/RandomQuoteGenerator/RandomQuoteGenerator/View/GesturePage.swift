//
//  GesturePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import SwiftUI

struct GesturePage: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .onTapGesture {
                    print("Text tapped")
                }
        }
        .background(.blue)
        .simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            print("VStack tapped")
                        }
                )
    }
}

#Preview {
    GesturePage()
}
