//
//  StringExtension.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/11/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self,
                                 tableName: "HomeModuleStrings",
                                 comment  : "")
    }
    
}
