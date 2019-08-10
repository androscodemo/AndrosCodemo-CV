//
//  IBView.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIView

@IBDesignable class IBView: UIView {
    
    @IBInspectable var cornerRadius          : CGFloat = 0
    @IBInspectable var cornerRadiusMultiplier: CGFloat = 0
    
    @IBInspectable var gradientFirstColor : UIColor? {
        didSet { updateGradient() }
    }
    @IBInspectable var gradientSecondColor: UIColor? {
        didSet { updateGradient() }
    }
    
    private var lyGradient: CAGradientLayer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.masksToBounds = false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        lyGradient?.frame  = bounds
        layer.cornerRadius = cornerRadius + (frame.height * cornerRadiusMultiplier)
    }
    
    private func updateGradient() {
        guard let firstColor  = gradientFirstColor,
              let secondColor = gradientSecondColor else {
                lyGradient?.removeFromSuperlayer()
                lyGradient = nil
                return
        }
        if lyGradient == nil {
            let layer = CAGradientLayer()
            layer.frame = bounds
            layer.colors = [firstColor .cgColor,
                            secondColor.cgColor]
            layer.startPoint = CGPoint(x: 0.5, y: 0)
            layer.endPoint   = CGPoint(x: 0.5, y: 1)
            lyGradient = layer
            self.layer.insertSublayer(layer, at: 0)
        } else {
            lyGradient?.colors = [firstColor .cgColor,
                                  secondColor.cgColor]
        }
    }
    
}

extension UIView {
    
    @IBInspectable var shadowColor: UIColor? {
        get { return layer.shadowColor?.uiColor }
        set { layer.shadowColor = newValue?.cgColor }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get { return layer.shadowOpacity }
        set { layer.shadowOpacity = newValue }
    }
    
    @IBInspectable var shadowBlur: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }
    
    
}
