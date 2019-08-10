//
//  HPresenter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol HPresentation {
    
    var numberOfElements: Int { get }
    
    func viewDidLoad() -> Void
    func prepare(cell: HTableViewCell, forRow row: Int) -> Void
    func didSelectElement(row: Int) -> Void
    
}

class HPresenter {
    
    private weak var view : HView?
    private var interactor: HomeFetcher
    private var router    : HRouting
    
    private var elements: [HomeElement] = []
    
    init(view: HView, interactor: HomeFetcher, router: HRouting) {
        self.view       = view
        self.interactor = interactor
        self.router     = router
    }
    
}

extension HPresenter: HPresentation {
    
    var numberOfElements: Int {
        return elements.count
    }
    
    func viewDidLoad() {
        elements = interactor.getElements().elements
        view?.dataReady()
    }
    func prepare(cell: HTableViewCell, forRow row: Int) -> () {
        let element = elements[row]
        cell.setImage(named: element.iconName)
        cell.setTitle(element.title)
    }
    func didSelectElement(row: Int) {
        switch row {
        case 0: router.goToPersonalInformation(withTitle: elements[0].title)
        case 1: router.goToProfessionalSummary(withTitle: elements[1].title)
        case 2: router.goToTopicsOfKnowledge  (withTitle: elements[2].title)
        case 3: router.goToPastExperience     (withTitle: elements[3].title)
        case 4: router.goToContact            (withTitle: elements[4].title)
        case 5: router.goToAboutThisProject   (withTitle: elements[5].title)
        default: break
        }
    }
    
}
