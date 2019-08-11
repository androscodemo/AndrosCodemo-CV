//
//  HModuleBuilder.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

class HModuleBuilder {
    
    func build() -> UIViewController {
        let storyboard = UIStoryboard(name  : "HomeModule",
                                      bundle: nil)
        let viewController: HViewController = storyboard.instantiate()
        viewController.presenter = HPresenter(view      : viewController,
                                                 interactor: HInteractor(),
                                                 router    : HRouter(viewController: viewController))
        return viewController
    }
    
}
