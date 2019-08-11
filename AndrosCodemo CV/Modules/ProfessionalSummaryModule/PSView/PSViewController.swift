//
//  PSViewController.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol PSView: class {
    
    func setContent(_ text: String) -> Void
    
}

class PSViewController: UIViewController {
    
    //MARK:IBOutlets
    @IBOutlet private weak var lblContent: UILabel!
    
    //MARK:Properties
    public var presenter: PSPresenting!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
}

extension PSViewController: PSView {
    
    func setContent(_ text: String) {
        lblContent.text = text
    }
    
}
