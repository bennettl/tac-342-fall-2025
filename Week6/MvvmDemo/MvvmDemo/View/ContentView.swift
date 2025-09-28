//
//  ContentView.swift
//  MvvmDemo
//
//  Created by Bennett Lee on 9/27/25.
//

import SwiftUI

struct ContentView: View {

    @State var viewModel = CalculatorViewModel()

    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            if !viewModel.result.isEmpty {
                Text("Result: \(viewModel.result)")
                    .foregroundStyle(.white)
                    .font(.title)
            }

            HStack {
                TextField("Number 1", text: $viewModel.number1)
                    .padding()
                    .background(.white)

                TextField("Number 2", text: $viewModel.number2)
                    .padding()
                    .background(.white)
            }
            .padding(.horizontal)

            Button("Add") {
                viewModel.sum()
            }
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.white)
            .padding()

            Spacer()
        }
        .background(.gray)
        .padding()
    }
}

#Preview {
    ContentView()
}
