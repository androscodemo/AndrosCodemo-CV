//
//  PIRouter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

protocol PIRouting {
    
    func dismiss() -> Void
    
}

class PIRouter {
    
    private var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}

extension PIRouter: PIRouting {
    
    func dismiss() {
        viewController.navigationController?
                      .popViewController(animated: true)
    }
    
}
