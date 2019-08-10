//
//  CView.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol CView: class {
    
    func set(cellphone: String) -> Void
    func set(email    : String) -> Void
    
}

class CViewController: UIViewController {
    
    //MARK:IBOutlets
    @IBOutlet private weak var lblCellphone: UILabel!
    @IBOutlet private weak var lblEmail    : UILabel!
    
    //MARK:Properties
    public var presenter: CPresenting!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    //MARK:IBActions
    @IBAction private func callTouchedUpInside() {
        presenter.callAction()
    }
    @IBAction private func smsTouchedUpInside() {
        presenter.smsAction()
    }
    @IBAction private func whatsappTouchedUpInside() {
        presenter.whatsappAction()
    }
    @IBAction private func emailTouchedUpInside() {
        presenter.emailAction()
    }
    
}

extension CViewController: CView {
    
    func set(cellphone: String) {
        lblCellphone.text = cellphone
    }
    func set(email: String) {
        lblEmail.text = email
    }
    
}
