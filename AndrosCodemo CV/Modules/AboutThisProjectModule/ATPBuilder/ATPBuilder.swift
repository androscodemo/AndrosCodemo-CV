//
//  ATPBuilder.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

class ATPBuilder {
    
    func build(withTitle title: String) -> UIViewController {
        let viewController: ATPViewController = UIStoryboard(name  : "AboutThisProject",
                                                             bundle: nil).instantiate()
        viewController.presenter = ATPPresenter(view      : viewController,
                                                interactor: ATPInteractor(),
                                                router    : ATPRouter(viewController: viewController))
        viewController.navigationItem.title = title
        return viewController
    }
    
}
