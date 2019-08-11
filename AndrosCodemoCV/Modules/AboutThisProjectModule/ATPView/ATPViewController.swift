//
//  ATPViewController.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

protocol ATPView: class {
    
    func setURL(_ url: String) -> Void
    
}

class ATPViewController: UIViewController {
    
    //MARK:IBOutlets
    @IBOutlet private weak var lblURL: UILabel!
    
    //MARK:Properties
    public var presenter: ATPPresenting!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    //MARK:IBActions
    @IBAction private func urlTapped() {
        presenter.urlTapped()
    }
    
}

extension ATPViewController: ATPView {
    
    func setURL(_ url: String) {
        lblURL.text = url
    }
    
}
