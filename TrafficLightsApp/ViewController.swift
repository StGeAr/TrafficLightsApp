//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Герман Ставицкий on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var switchLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        switchLightButton.layer.cornerRadius = 10
    }

    @IBAction func switchLightButtonPressed() {
        switchLightButton.setTitle("NEXT", for: .normal)

        if redView.alpha == 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        } else {
            redView.alpha = 1
        }
    }
    
}

