//
//  HTableViewCell.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UITableViewCell

class HTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var container: UIView!
    @IBOutlet private weak var imvIcon  : UIImageView!
    @IBOutlet private weak var lblTitle : UILabel!
    
    public func setTitle(_ string: String) {
        lblTitle.text = NSLocalizedString(string,
                                          tableName: "HomeModuleStrings",
                                          comment  : "")
    }
    public func setImage(named name: String) {
        imvIcon.image = UIImage(named: name)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        container.shadowColor = .clear
        super.touchesBegan(touches, with: event)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        container.shadowColor = .black
        super.touchesEnded(touches, with: event)
    }
    
}
