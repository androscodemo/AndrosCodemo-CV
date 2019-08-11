//
//  PersonalInformationModel.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation.NSDate

struct PersonalInformationModel {
    
    var name         : String
    var imageName    : String
    var birthdate    : Date
    var education    : String
    var birthplace   : String
    var dependants   : String
    var maritalStatus: String
    
    var age: Int {
        return Calendar.current
                       .dateComponents([.year],
                                       from: birthdate,
                                       to  : Date()).year ?? 0
    }
    var dateString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.locale = .current
        return formatter.string(from: birthdate)
    }
    
    init(name: String, imageName: String, birthdate: Date, education: String, birthplace: String, dependants: String, maritalStatus: String) {
        self.name          = name
        self.imageName     = imageName
        self.birthdate     = birthdate
        self.education     = education
        self.birthplace    = birthplace
        self.dependants    = dependants
        self.maritalStatus = maritalStatus
    }
    
}
