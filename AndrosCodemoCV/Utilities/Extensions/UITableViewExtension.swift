//
//  UITableViewExtension.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UITableView

extension UITableView {
    
    func dequeueCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self),
                                   for           : indexPath) as! T
    }
    
}
