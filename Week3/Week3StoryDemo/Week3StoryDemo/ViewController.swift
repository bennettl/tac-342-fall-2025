//
//  ViewController.swift
//  Week3StoryDemo
//
//  Created by Bennett Lee on 9/10/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.text = "Hello World"
        view.addSubview(label)

        label.sizeToFit()
        let centerX = (label.bounds.size.width - UIScreen.main.bounds.size.width) / 2.0
        let centerY = (label.bounds.size.height - UIScreen.main.bounds.size.height) / 2.0
        label.frame = CGRect(
            x: centerX, y: centerY,
            width: label.bounds.size.width,
            height: label.bounds.size.height
        )

    }


}

