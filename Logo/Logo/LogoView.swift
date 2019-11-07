//
//  LogoView.swift
//  Logo
//
//  Created by Niranjan Kumar on 11/6/19.
//  Copyright © 2019 Nar Kumar. All rights reserved.
//

import UIKit

struct Curve {
    let width: CGFloat
    let length: CGFloat
    let color: UIColor
}

@IBDesignable
class LogoView: UIView {
    
    private let firstCurve = Curve(width: 5.0, length: 6.0 , color: .black)
    private let secondCurve = Curve(width: 3.0, length: 4.0, color: .black)
    private let thirdCurve = Curve(width: 2.0, length: 3.0, color: .black)
    
    private let circleColor = UIColor.green
    private let borderColor = UIColor.white
    private let borderWidth: CGFloat = 2.0
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addEllipse(in: rect)
            context.setFillColor(circleColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2, y: rect.origin.y + borderWidth / 2, width: rect.size.width - borderWidth, height: rect.size.height - borderWidth ))
            
            // first curve
            context.setStrokeColor(firstCurve.color.cgColor)
            context.beginPath()
            
    }

    
    }
}
