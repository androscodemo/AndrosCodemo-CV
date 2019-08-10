//
//  ContactBuilder.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

class ContactModuleBuilder {
    
    func build(withTitle title: String) -> UIViewController {
        let viewController: CViewController = UIStoryboard(name  : "Contact",
                                                           bundle: nil).instantiate()
        viewController.presenter = CPresenter(view      : viewController,
                                              interactor: CInteractor(),
                                              router    : CRouter(viewController: viewController))
        viewController.navigationItem.title = title
        return viewController
    }
    
}
