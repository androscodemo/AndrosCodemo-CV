//
//  CRouter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol CRouting {
    
    func call(phone   : String) -> Void
    func send(sms     : String) -> Void
    func send(whatsapp: String) -> Void
    func send(email   : String) -> Void
    
}

class CRouter {
    
    private var viewController: UIViewController
    
    init(viewController: UIViewController) {
            self.viewController = viewController
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title         : "Sorry for the inconvenience",
                                      message       : message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Accept", style: .default))
        viewController.present(alert, animated: true)
    }
    
}

extension CRouter: CRouting {
    
    func call(phone: String) {
        if let url = URL(string: "tel://\(phone)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else {
            showAlert(message: "It was not posible to call the cellphone")
        }
    }
    func send(sms: String) {
        if let url = URL(string: "sms:\(sms)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else {
            showAlert(message: "It was not posible to open Messages")
        }
    }
    func send(whatsapp: String) {
        if let url = URL(string: "whatsapp://send?phone=\(whatsapp)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else {
            showAlert(message: "It was not posible to open WhatsApp")
        }
    }
    func send(email: String) {
        if let url = URL(string: "mailto:\(email)"),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else {
            showAlert(message: "It was not posible to open Mail")
        }
    }
    
}
