//
//  HomePresenter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol HomePresentation {
    
    func viewDidLoad() -> Void
    func didSelectElement(row: Int) -> Void
    
}

class HomePresenter {
    
    weak var view: HomeView?
    
    var interactor: HomeFetcher
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeFetcher, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

extension HomePresenter: HomePresentation {
    
    func viewDidLoad() {
        view?.setElements(homeModel: interactor.getElements())
    }
    func didSelectElement(row: Int) {
        switch row {
        case 0: router.goToPersonalInformation()
        case 1: router.goToProfessionalSummary()
        case 2: router.goToTopicsOfKnowledge()
        case 3: router.goToPastExperience()
        case 4: router.goToContact()
        case 5: router.goToAboutThisProject()
        default: break
        }
    }
    
}
