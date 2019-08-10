//
//  CGColorExtension.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIColor
import CoreGraphics.CGColor

extension CGColor {
    
    var uiColor: UIColor? {
        return UIColor(cgColor: self)
    }
    
}
