//
//  ContentView.swift
//  Week3Demo
//
//  Created by Bennett Lee on 9/10/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack {
            VStack {
                Spacer()
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)

                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            .background(.blue)

            Spacer()

        }
        .padding(24)
    }

//        VStack {
//            Circle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//                .padding(.vertical, 100)
//                .padding(.horizontal, 50)
//
//            HStack(spacing: 20) {
//                ZStack {
//                    Circle()
//                        .fill(Color.blue)
//                        .frame(width: 100, height: 100)
//
//                    Circle()
//                        .fill(Color.red)
//                        .frame(width: 50, height: 50)
//                }
//
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//            }
//        }
}

#Preview {
    ContentView()
}
