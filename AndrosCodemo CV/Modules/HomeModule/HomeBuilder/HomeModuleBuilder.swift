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
        
        let navigationController = UINavigationController()
        navigationController.navigationBar.tintColor     = .black
        navigationController.navigationBar.shadowBlur    = 4
        navigationController.navigationBar.shadowColor   = .black
        navigationController.navigationBar.shadowOpacity = 0.4
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.shadowOffset  = CGSize(width : 0,
                                                                  height: 4)
        navigationController.navigationBar.barTintColor = UIColor(red  : 225/255,
                                                                  green: 225/255,
                                                                  blue : 225/255,
                                                                  alpha: 1)
        navigationController.viewControllers = [viewController]
        
        return navigationController
    }
    
}
