//
//  PIBuilder.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

class PIModuleBuilder {
    
    func build(withTitle title: String) -> UIViewController {
        let viewController: PIViewController = UIStoryboard(name  : "PersonalInformation",
                                                            bundle: nil).instantiate()
        viewController.presenter = PIPresenter(view      : viewController,
                                               interactor: PIInteractor(),
                                               router    : PIRouter(viewController: viewController))
        viewController.navigationItem.title = title
        return viewController
    }
    
}
