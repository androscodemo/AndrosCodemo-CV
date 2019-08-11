//
//  HInteractor.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol HomeFetcher {
    
    func getElements() -> HomeModel
    
}

class HInteractor {
    
}

extension HInteractor: HomeFetcher {
    
    func getElements() -> HomeModel {
        return HomeModel(elements: [HomeElement(title   : "Personal information",
                                                iconName: "HMPersonalInformation"),
                                    HomeElement(title   : "Professional summary",
                                                iconName: "HMProfessionalSummary"),
                                    HomeElement(title   : "Topics of knowledge",
                                                iconName: "HMTopicsOfKnowledge"),
                                    HomeElement(title   : "Past experience",
                                                iconName: "HMPastExperience"),
                                    HomeElement(title   : "Contact",
                                                iconName: "HMContact"),
                                    HomeElement(title   : "About this project",
                                                iconName: "HMAboutThisProject")])
    }
    
}
