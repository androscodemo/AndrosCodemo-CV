//
//  HRouter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

protocol HRouting {
    
    func goToContact            (withTitle title: String) -> Void
    func goToPastExperience     (withTitle title: String) -> Void
    func goToAboutThisProject   (withTitle title: String) -> Void
    func goToTopicsOfKnowledge  (withTitle title: String) -> Void
    func goToPersonalInformation(withTitle title: String) -> Void
    func goToProfessionalSummary(withTitle title: String) -> Void
    
}

class HRouter {
    
    private unowned var viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    private func push(viewController: UIViewController) {
        self.viewController.navigationController?
                           .pushViewController(viewController,
                                               animated: true)
    }
    private func localizedTitle(_ title: String) -> String {
        return  NSLocalizedString(title,
                                  tableName: "HomeModuleStrings",
                                  comment  : "")
    }
    
}

extension HRouter: HRouting {
    
    func goToPersonalInformation(withTitle title: String) {
        push(viewController: PIModuleBuilder().build(withTitle: localizedTitle(title)))
    }
    
    func goToProfessionalSummary(withTitle title: String) {
        push(viewController: PSBuilder().build(withTitle: localizedTitle(title)))
    }
    
    func goToTopicsOfKnowledge(withTitle title: String) {
        push(viewController: TOKBuilder().build(withTitle: localizedTitle(title)))
    }
    
    func goToPastExperience(withTitle title: String) {
        push(viewController: PEBuilder().build(withTitle: localizedTitle(title)))
    }
    
    func goToContact(withTitle title: String) {
        push(viewController: ContactModuleBuilder().build(withTitle: localizedTitle(title)))
    }
    
    func goToAboutThisProject(withTitle title: String) {
        push(viewController: ATPBuilder().build(withTitle: localizedTitle(title)))
    }
    
}
