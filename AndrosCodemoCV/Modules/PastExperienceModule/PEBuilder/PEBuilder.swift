//
//  PEBuilder.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

class PEBuilder {
    
    func build(withTitle title: String) -> UIViewController {
        let viewController: PEViewController = UIStoryboard(name  : "PastExperience",
                                                            bundle: nil).instantiate()
        viewController.presenter = PEPresenter(view      : viewController,
                                               interactor: PEInteractor(),
                                               router    : PERouter(viewController: viewController))
        viewController.navigationItem.title = title
        return viewController
    }
    
}
