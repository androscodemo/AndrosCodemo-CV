//
//  PSPresenter.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol PSPresenting {
    
    func viewDidLoad()
    
}

class PSPresenter {
    
    private weak var view: PSView?
    private var interactor: PSFetcher
    private var router: PSRouting
    
    init(view: PSView, interactor: PSFetcher, router: PSRouting) {
        self.view       = view
        self.interactor = interactor
        self.router     = router
    }
    
}

extension PSPresenter: PSPresenting {
    
    func viewDidLoad() {
        view?.setContent(interactor.getContent())
    }
    
}
