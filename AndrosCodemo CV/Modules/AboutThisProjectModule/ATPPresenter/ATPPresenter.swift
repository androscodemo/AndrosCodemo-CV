//
//  ATPPresenter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation.NSURL

protocol ATPPresenting {
    
    func viewDidLoad() -> Void
    func urlTapped  () -> Void
    
}

class ATPPresenter {
    
    private weak var view : ATPView?
    private var interactor: ATPFetcher
    private var router    : ATPRouting
    
    private var url: URL!
    
    init(view: ATPView, interactor: ATPFetcher, router: ATPRouting) {
        self.view       = view
        self.interactor = interactor
        self.router     = router
    }
    
}

extension ATPPresenter: ATPPresenting {
    
    func viewDidLoad() {
        url = interactor.urlToShow()
        view?.setURL(url.absoluteString)
    }
    func urlTapped() {
        router.goTo(url: url)
    }
    
}
