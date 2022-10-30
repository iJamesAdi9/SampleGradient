//
//  GradientView.swift
//  SampleGradient
//
//  Created by Wachiravit Teerasarn on 30/10/2565 BE.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    override class var layerClass: AnyClass { return CAGradientLayer.self }

    private var gradientLayer: CAGradientLayer { return layer as! CAGradientLayer }
    
    var locations: [NSNumber] = [0, 1] {
        didSet {
            updateColors()
        }
    }
    
    var borderWidth: CGFloat = 1 {
        didSet {
            updateColors()
        }
    }
    
    var borderColor: CGColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
        didSet {
            updateColors()
        }
    }

    var colors: [UIColor] = [.white, .black] {
        didSet {
            updateColors()
        }
    }
    
    var startPoint: CGPoint = .zero {
        didSet {
            updateColors()
        }
    }
    
    var endPoint: CGPoint = .zero {
        didSet {
            updateColors()
        }
    }
    
    private func updateColors() {
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        gradientLayer.colors = colors.compactMap { $0.cgColor }
        gradientLayer.locations = locations
        gradientLayer.borderWidth = borderWidth
        gradientLayer.borderColor = borderColor
    }

}
