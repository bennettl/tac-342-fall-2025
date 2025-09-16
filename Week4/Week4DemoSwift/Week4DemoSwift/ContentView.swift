//
//  ContentView.swift
//  Week4DemoSwift
//
//  Created by Bennett Lee on 9/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        Text("**Hello**, there *world!*")
        //            .border(Color.black)
        //            .padding() // modifier
        //            .foregroundStyle(Color(
        //                red: 54.0 / 255.0,
        //                green: 129.0 / 255.0,
        //                blue: 179.0 / 255.0
        //            ))
        //            .font(Font.system(size: 101.0))
        //            .multilineTextAlignment(.center)

        //        Button(
        //            "Press me",
        //            action: {
        //                print("The user tapped me")
        //            }
        //        )
        //        .font(Font.system(size: 50.0))

        //        Button("Press me") {
        //            print("The user tapped me")
        //        }
        //        .font(Font.system(size: 50.0))

        //        Button(
        //            action: {
        //                print("The user tapped me")
        //            }, label: {
        //                Circle()
        //                    .fill(Color.red)
        //                    .frame(width: 200, height: 200)
        //            }
        //        )
        //        .disabled(true)

        //        Image(systemName: "laptopcomputer")
        //            .font(Font.system(size: 200.0))
        //            .foregroundStyle(Color.pink)


        HStack {
            Spacer()
            VStack {
                Spacer()
                Image("cutePuppy")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .background(Color.blue)
                    .clipShape(Circle())
                Spacer()
            }
            Spacer()
        }
        .background(Color.yellow)

    }
}

#Preview {
    ContentView()
}
