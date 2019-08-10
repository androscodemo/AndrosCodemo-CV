//
//  IBImageView.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIImageView

@IBDesignable class IBImageView: UIImageView {
    
    @IBInspectable var cornerRadius          : CGFloat = 0
    @IBInspectable var cornerRadiusMultiplier: CGFloat = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = cornerRadius + (frame.height * cornerRadiusMultiplier)
    }
    
}
