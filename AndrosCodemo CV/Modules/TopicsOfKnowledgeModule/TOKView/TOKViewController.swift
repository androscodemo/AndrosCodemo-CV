//
//  TOKViewController.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol TOKView: class {
    
    func setLanguajes(_ text: String) -> Void
    func setSoftware (_ text: String) -> Void
    func setInterests(_ text: String) -> Void
    func setProgrammingLanguajes(_ text: String) -> Void
    
}

class TOKViewController: UIViewController {
    
    //MARK:IBOutlets
    @IBOutlet private weak var lblLanguajes : UILabel!
    @IBOutlet private weak var lblSoftware  : UILabel!
    @IBOutlet private weak var lblPLanguajes: UILabel!
    @IBOutlet private weak var lblInterests : UILabel!
    
    //MARK:Properties
    public var presenter: TOKPresenting!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
}

extension TOKViewController: TOKView {
    
    func setLanguajes(_ text: String) {
        lblLanguajes.text = text
    }
    
    func setSoftware(_ text: String) {
        lblSoftware.text = text
    }
    
    func setInterests(_ text: String) {
        lblInterests.text = text
    }
    
    func setProgrammingLanguajes(_ text: String) {
        lblPLanguajes.text = text
    }
    
}
