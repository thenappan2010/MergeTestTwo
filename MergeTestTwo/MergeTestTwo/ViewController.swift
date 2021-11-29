//
//  ViewController.swift
//  MergeTestTwo
//
//  Created by Thenappan Ramanathan on 29/11/21.
//

import UIKit

class ViewController: UIViewController {

    let centerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change background color", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.layer.cornerRadius = 8
        button.backgroundColor = UIColor.systemTeal
        return button
    }()

    var bgValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(centerButton)
        centerButton.translatesAutoresizingMaskIntoConstraints = false
        centerButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        centerButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        centerButton.addTarget(self, action: #selector(setBgColor), for: .touchUpInside)
    }

    @objc func setBgColor() {
        switch bgValue {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.blue
        case 2:
            self.view.backgroundColor = UIColor.green
        case 3:
            self.view.backgroundColor = UIColor.gray
        case 4:
            self.view.backgroundColor = UIColor.brown
        default:
            self.view.backgroundColor = UIColor.white
        }
        bgValue += 1
        bgValue = bgValue%6
    }
}

