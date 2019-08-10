//
//  HomeRouter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

protocol HomeRouting {
    
    func goToContact()             -> Void
    func goToPastExperience()      -> Void
    func goToAboutThisProject()    -> Void
    func goToTopicsOfKnowledge()   -> Void
    func goToPersonalInformation() -> Void
    func goToProfessionalSummary() -> Void
    
}

class HomeRouter {
    
    var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    private func push(viewController: UIViewController) {
        self.viewController.navigationController?
                           .pushViewController(viewController,
                                               animated: true)
    }
    
}

extension HomeRouter: HomeRouting {
    
    func goToPersonalInformation() {
        push(viewController: UIViewController())
    }
    
    func goToProfessionalSummary() {
        push(viewController: UIViewController())
    }
    
    func goToTopicsOfKnowledge() {
        push(viewController: UIViewController())
    }
    
    func goToPastExperience() {
        push(viewController: UIViewController())
    }
    
    func goToContact() {
        push(viewController: UIViewController())
    }
    
    func goToAboutThisProject() {
        push(viewController: UIViewController())
    }
    
}
