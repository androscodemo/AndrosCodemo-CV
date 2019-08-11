//
//  PSBuilder.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

class PSBuilder {
    
    func build(withTitle title: String) -> UIViewController {
        let viewController: PSViewController = UIStoryboard(name: "ProfessionalSummary", bundle: nil).instantiate()
        viewController.presenter = PSPresenter(view      : viewController,
                                               interactor: PSInteractor(),
                                               router    : PSRouter(viewController: viewController))
        viewController.navigationItem.title = title
        return viewController
    }
    
}
