//
//  PETableCell.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UITableViewCell

class PETableCell: UITableViewCell {
    
    //MARK:IBOutlets
    @IBOutlet private weak var imvIcon       : UIImageView!
    @IBOutlet private weak var lblTitle      : UILabel!
    @IBOutlet private weak var lblSubtitle   : UILabel!
    @IBOutlet private weak var lblDate       : UILabel!
    @IBOutlet private weak var lblDescription: UILabel!
    
    //MARK:Public Functions
    public func setImage(named: String) {
        imvIcon.image = UIImage(named: named)
    }
    public func setTitle(_ title: String) {
        lblTitle.text = title
    }
    public func setSubtitle(_ subtitle: String) {
        lblSubtitle.text = subtitle
    }
    public func setDate(_ date: String) {
        lblDate.text = date
    }
    public func setDescription(_ description: String) {
        lblDescription.text = description
    }
    
}
