//
//  CalculatorViewModel.swift
//  MvvmDemo
//
//  Created by Bennett Lee on 9/27/25.
//

import Foundation
import Observation

@Observable
class CalculatorViewModel {
    var number1 = ""
    var number2 = "2"
    var result = ""

    func sum() {
        // Early return
        guard let number1Int = Int(number1), let number2Int = Int(number2) else {
            return
        }

        result = "\(number1Int + number2Int)"
    }
}

