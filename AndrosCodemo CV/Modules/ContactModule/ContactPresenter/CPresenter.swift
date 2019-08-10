//
//  CPresenter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol CPresenting {
    
    func viewDidLoad   () -> Void
    func callAction    () -> Void
    func smsAction     () -> Void
    func whatsappAction() -> Void
    func emailAction   () -> Void
    
}

class CPresenter {
    
    private weak var view: CView?
    private var interactor: CFetcher
    private var router: CRouting
    
    private var contactModel: ContactModel!
    
    init(view: CView, interactor: CFetcher, router: CRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
}

extension CPresenter: CPresenting {
    
    func viewDidLoad() {
        contactModel = interactor.getContactInfo()
        view?.set(email    : contactModel.email)
        view?.set(cellphone: contactModel.cellphone)
    }
    func callAction() {
        router.call(phone: contactModel.cellphone)
    }
    func smsAction() {
        router.send(sms: contactModel.cellphone)
    }
    func whatsappAction() {
        router.send(whatsapp: contactModel.cellphone)
    }
    func emailAction() {
        router.send(email: contactModel.email)
    }
    
}
