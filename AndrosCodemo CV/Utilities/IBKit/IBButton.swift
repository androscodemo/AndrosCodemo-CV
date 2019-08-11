//
//  IBButton.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIButton

@IBDesignable class IBButton: UIButton {
    
    @IBInspectable var cornerRadius          : CGFloat = 0
    @IBInspectable var cornerRadiusMultiplier: CGFloat = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = cornerRadius + (frame.height * cornerRadiusMultiplier)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        shadowColor = .clear
        super.touchesBegan(touches, with: event)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        shadowColor = .black
        super.touchesEnded(touches, with: event)
    }
    
}
