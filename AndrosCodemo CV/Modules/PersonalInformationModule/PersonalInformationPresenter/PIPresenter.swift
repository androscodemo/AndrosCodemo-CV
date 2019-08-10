//
//  PIPresenter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol PIPresentation {
    
    func viewDidLoad() -> Void
    
}

class PIPresenter {
    
    private weak var view : PIView?
    private var interactor: PIFetcher
    private var router    : PIRouting
    
    init(view: PIView, interactor: PIFetcher, router: PIRouting) {
        self.view       = view
        self.interactor = interactor
        self.router     = router
    }
    
}

extension PIPresenter: PIPresentation {
    
    func viewDidLoad() {
        let personalInformation = interactor.fetchPersonalInformation()
        view?.setPicture      (personalInformation.imageName)
        view?.setName         (personalInformation.name)
        view?.setAge          (personalInformation.age.description)
        view?.setBirthdate    (personalInformation.dateString)
        view?.setBirthplace   (personalInformation.birthplace)
        view?.setEducation    (personalInformation.education)
        view?.setMaritalStatus(personalInformation.maritalStatus)
        view?.setDependants   (personalInformation.dependants)
    }
    
}
