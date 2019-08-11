//
//  TOKBuilder.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

class TOKBuilder {
    
    func build(withTitle title: String) -> UIViewController {
        let viewController: TOKViewController = UIStoryboard(name  : "TopicsOfKnowledge",
                                                             bundle: nil).instantiate()
        viewController.presenter = TOKPresenter(view      : viewController,
                                                interactor: TOKInteractor(),
                                                router    : TOKRouter(viewController: viewController))
        return viewController
    }
    
}
