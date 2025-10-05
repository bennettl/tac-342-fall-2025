//
//  AnimationPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/5/25.
//

import SwiftUI

struct AnimationPage: View {
    @State var xOffset = 0.0
    @State var scale = 1.0

    var body: some View {
        Button {
            scale = 1.2
//            withAnimation(.snappy) {
//            }
        } label: {
            Image(systemName: "heart.fill")
                .font(.system(size: 100))
                .foregroundColor(.pink)
                .scaleEffect(scale)
                .animation(.easeIn.repeatForever(), value: scale)
//            Circle()
//                .fill(.pink)
//                .frame(width: 100)
//                .offset(x: xOffset)
//                .animation(.easeIn.repeatForever(), value: xOffset)
        }

    }
}

#Preview {
    AnimationPage()
}
