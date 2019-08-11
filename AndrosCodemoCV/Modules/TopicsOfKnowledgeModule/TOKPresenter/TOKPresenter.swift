//
//  TOKPresenter.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol TOKPresenting {
    
    func viewDidLoad() -> Void
    
}

class TOKPresenter {
    
    private weak var view : TOKView?
    private var interactor: TOKFetcher
    private var router    : TOKRouting
    
    init(view: TOKView, interactor: TOKFetcher, router: TOKRouting) {
        self.view       = view
        self.interactor = interactor
        self.router     = router
    }
    
}

extension TOKPresenter: TOKPresenting {
    
    func viewDidLoad() {
        let data = interactor.getTopicsOfKnowledge()
        view?.setSoftware (data.software)
        view?.setLanguajes(data.languajes)
        view?.setInterests(data.interests)
        view?.setProgrammingLanguajes(data.programmingLanguajes)
    }
    
}
