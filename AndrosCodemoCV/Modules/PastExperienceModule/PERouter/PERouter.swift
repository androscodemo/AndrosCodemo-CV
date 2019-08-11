//
//  PERouter.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol PERouting {
    
}

class PERouter {
    
    private unowned var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}

extension PERouter: PERouting {
    
}
