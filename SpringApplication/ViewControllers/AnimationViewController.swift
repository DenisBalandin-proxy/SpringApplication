//
//  ViewController.swift
//  SpringApplication
//
//  Created by Denis on 2022/11/01.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    
    @IBOutlet var animatedView: SpringView!
    @IBOutlet var valueLabels: [UILabel]!
    @IBOutlet var runButton: SpringButton!
    
    private var settings = AnimationSettings.getAnimateSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValuesForLabels()
        runButton.titleLabel?.text = "Run"
    }
    
    override func viewWillLayoutSubviews() {
        animatedView.layer.cornerRadius = 15
    }
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        animatedView.animation = settings.preset
        animatedView.curve = settings.curve
        animatedView.force = settings.force
        animatedView.duration = settings.duration
        animatedView.delay = settings.delay
        animatedView.animate()
        
        setValuesForLabels()
        settings = AnimationSettings.getAnimateSettings()
        sender.setTitle("Run \(settings.preset)", for: .normal)
    }
    
    private func setValuesForLabels() {
        for label in valueLabels {
            switch label.tag {
            case 0:
                label.text = settings.preset
            case 1:
                label.text = settings.curve
            case 2:
                label.text = String(format: "%.2f", settings.force)
            case 3:
                label.text = String(format: "%.2f", settings.duration)
            default:
                label.text = String(format: "%.2f", settings.delay)
            }
        }
    }
}
