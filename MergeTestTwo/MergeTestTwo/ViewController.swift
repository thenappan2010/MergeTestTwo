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

    let countLabel: UILabel = {
        let countLabel = UILabel()
        countLabel.textColor = UIColor.white
        countLabel.backgroundColor = UIColor.blue
        countLabel.textAlignment = .center
        return countLabel
    }()

    var bgValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(centerButton)
        self.view.addSubview(countLabel)
        centerButton.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false

        centerButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        centerButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        centerButton.addTarget(self, action: #selector(setBgColor), for: .touchUpInside)

        countLabel.bottomAnchor.constraint(equalTo: centerButton.topAnchor, constant: -20).isActive = true
        countLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        setCountValue()
    }

    func setCountValue() {
        countLabel.text = "\(bgValue)"
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
        setCountValue()
    }
}

