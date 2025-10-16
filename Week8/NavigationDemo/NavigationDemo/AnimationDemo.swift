//
//  AnimationDemo.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/15/25.
//

import SwiftUI

struct AnimationDemo: View {
    @State var yOffset = 0.0
    @State var opacity = 1.0

    var body: some View {
        Button {
            withAnimation {
                yOffset = -800
                opacity = 0
            } completion: {
                withAnimation{
                    yOffset = 800
                } completion: {
                    withAnimation{
                        yOffset = 0
                        opacity = 1
                    }
                }
            }
        } label: {
            Rectangle()
                .frame(width: 200, height: 200)
                .offset(y: yOffset)
                .opacity(opacity)
        }
    }
}

#Preview {
    AnimationDemo()
}
