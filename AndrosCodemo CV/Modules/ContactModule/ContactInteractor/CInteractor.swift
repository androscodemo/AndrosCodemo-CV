//
//  CInteractor.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol CFetcher {
    
    func getContactInfo() -> ContactModel
    
}

class CInteractor {
    
}

extension CInteractor: CFetcher {
    
    func getContactInfo() -> ContactModel {
        return ContactModel(cellphone: "+522447863453",
                            email    : "androscodemo@live.com.mx")
    }
    
}
