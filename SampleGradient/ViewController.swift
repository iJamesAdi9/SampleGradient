//
//  ViewController.swift
//  SampleGradient
//
//  Created by Wachiravit Teerasarn on 30/10/2565 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gradientView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientView.colors = [.white, .blue]
        gradientView.locations = [0, 1.5]
        gradientView.startPoint = .zero
        gradientView.endPoint = .init(x: 1, y: 1)
    }
}

