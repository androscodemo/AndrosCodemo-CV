//
//  PIInteractor.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation

protocol PIFetcher {
    
    func fetchPersonalInformation() -> PersonalInformationModel
    
}

class PIInteractor {
    
}

extension PIInteractor: PIFetcher {
    
    func fetchPersonalInformation() -> PersonalInformationModel {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return PersonalInformationModel(name         : "Andros Bustamante Codemo",
                                        imageName    : "PIPicture",
                                        birthdate    : formatter.date(from: "1990/08/22") ?? Date(),
                                        education    : "Computer Science Engineer",
                                        birthplace   : "Atlixco, Puebla. México",
                                        dependants   : "My two daughters",
                                        maritalStatus: "Free union")
    }
    
}
