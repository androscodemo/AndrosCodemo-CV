//
//  UITableViewCellExtension.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UITableViewCell

extension UITableViewCell {

    static var identifier: String {
        return String(describing: type(of: self))
    }
    
}
