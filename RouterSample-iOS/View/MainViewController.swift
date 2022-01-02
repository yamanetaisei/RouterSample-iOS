//
//  MainViewController.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/02.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private weak var toBlueButton: UIButton! {
        didSet {
            toBlueButton.backgroundColor = .blue
            toBlueButton.setTitle("Blue", for: .normal)
            toBlueButton.setTitleColor(.white, for: .normal)
            toBlueButton.addTarget(self, action: #selector(tapToBlueButton), for: .touchUpInside)
        }
    }
    
    @IBOutlet private weak var toRedButton: UIButton! {
        didSet {
            toRedButton.backgroundColor = .red
            toRedButton.setTitle("Red", for: .normal)
            toRedButton.setTitleColor(.white, for: .normal)
            toRedButton.addTarget(self, action: #selector(tapToRedButton), for: .touchUpInside)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func tapToBlueButton() {
        MainRouter(container: self).transition(to: .blue)
    }
    
    @objc func tapToRedButton() {
        MainRouter(container: self).transition(to: .red)
    }
}
