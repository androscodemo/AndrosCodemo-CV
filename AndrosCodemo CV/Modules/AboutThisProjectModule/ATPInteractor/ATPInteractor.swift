//
//  ATPInteractor.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation.NSURL

protocol ATPFetcher {
    
    func urlToShow() -> URL
    
}

class ATPInteractor {
    
}

extension ATPInteractor: ATPFetcher {
    
    func urlToShow() -> URL {
        return URL(string: "https://github.com/androscodemo/AndrosCodemo-CV.git")!
    }
    
}
