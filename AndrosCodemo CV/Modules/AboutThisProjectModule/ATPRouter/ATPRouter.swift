//
//  ATPRouter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol ATPRouting {
    
    func goTo(url: URL)
    func dismiss()
    
}


class ATPRouter {
    
    var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}

extension ATPRouter: ATPRouting {
    
    func dismiss() {
        viewController.navigationController?.popViewController(animated: true)
    }
    func goTo(url: URL) {
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        } else {
            let alert = UIAlertController(title         : "Sorry for the inconvenience",
                                          message       : "It was not posible to open the web browser",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Accept", style: .default))
            viewController.present(alert, animated: true)
        }
    }
    
}
