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
        redView.layer.cornerRadius = 70
        yellowView.layer.cornerRadius = 70
        greenView.layer.cornerRadius = 70
        switchLightButton.layer.cornerRadius = 10
    }

    @IBAction func switchLightButtonPressed() {
        switchLightButton.setTitle("NEXT", for: .normal)
        redView.alpha = 1
        
    }
    
}

