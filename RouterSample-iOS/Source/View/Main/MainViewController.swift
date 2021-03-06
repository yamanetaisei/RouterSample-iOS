//
//  MainViewController.swift
//  RouterSample-iOS
//
//  Created by 山根大生 on 2022/01/02.
//

import UIKit

final class MainViewController: UIViewController {

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
    @IBOutlet private weak var toYellowButton: UIButton!  {
        didSet {
            toYellowButton.backgroundColor = .yellow
            toYellowButton.setTitle("Yellow", for: .normal)
            toYellowButton.setTitleColor(.white, for: .normal)
            toYellowButton.addTarget(self, action: #selector(tapToYellowButton), for: .touchUpInside)
        }
    }
    @IBOutlet private weak var toGreenButton: UIButton! {
        didSet {
            toGreenButton.backgroundColor = .green
            toGreenButton.setTitle("Green", for: .normal)
            toGreenButton.setTitleColor(.white, for: .normal)
            toGreenButton.addTarget(self, action: #selector(tapToGreenButton), for: .touchUpInside)
        }
    }
    
    var presenter: MainPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func tapToBlueButton() {
        presenter.present(to: .blue)
    }
    
    @objc func tapToRedButton() {
        presenter.present(to: .red)
    }
    
    @objc func tapToYellowButton() {
        presenter.push(to: .yellow)
    }
    
    @objc func tapToGreenButton() {
        presenter.push(to: .green)
    }
}
