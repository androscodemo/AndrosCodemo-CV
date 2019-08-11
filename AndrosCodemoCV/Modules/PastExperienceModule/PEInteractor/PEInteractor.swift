//
//  PEInteractor.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation.NSDate

protocol PEFetcher {
    
    func getData() -> [PastExperienceModel]
    
}

class PEInteractor {
    
}

extension PEInteractor: PEFetcher {
    
    func getData() -> [PastExperienceModel] {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return [PastExperienceModel(iconName   : "PEUnavailable",
                                    title      : "Vrabo Dynamics Startup",
                                    subtitle   : "Junior iOS Developer",
                                    initialDate: formatter.date(from: "2016/03/01")!,
                                    finalDate  : formatter.date(from: "2017/08/01"),
                                    description: "Only iOS developer. I was in charge of the development of the applications and deploy them to the AppStore. Mostly worked with UIKit, Autolayout, CoreBluetooth and Alamofire."),
               PastExperienceModel(iconName   : "PEUnavailable",
                                   title      : "4Pizlimtec Innovation Startup",
                                   subtitle   : "Developer",
                                   initialDate: formatter.date(from: "2017/01/15")!,
                                   finalDate  : formatter.date(from: "2018/10/24"),
                                   description: "In charge of the software development. Developed an iPad application to control a neurostimulation room over Bluetooth."),
               PastExperienceModel(iconName   : "PEUnavailable",
                                   title      : "Enigmo Startup",
                                   subtitle   : "Mid level iOS Developer",
                                   initialDate: formatter.date(from: "2018/02/01")!,
                                   finalDate  : formatter.date(from: "2018/08/24"),
                                   description: "Part of a small development team. Mostly worked with UIKit, Autolayout, Alamofire, CoreData, CoreLocation, AVFoundation."),
               PastExperienceModel(iconName   : "PEBAZ",
                                   title      : "Banco Azteca",
                                   subtitle   : "Senior iOS Developer",
                                   initialDate: formatter.date(from: "2018/10/24")!,
                                   finalDate  : nil,
                                   description: "Part of a big development team. I am in charge of the development and validation of the new application. Also I help the team to get used to the programming language Swift.")]
    }
    
}
