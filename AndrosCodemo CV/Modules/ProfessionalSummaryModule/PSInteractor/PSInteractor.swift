//
//  PSInteractor.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol PSFetcher {
    
    func getContent() -> String
    
}

class PSInteractor {
    
}

extension PSInteractor: PSFetcher {
    
    func getContent() -> String {
        return """
        Graduated from the Benemérita Universidad Autónoma de Puebla (BUAP) as a Computer Science Engineer.
        
        I worked on some StartUps where I managed to familiarize myself with the Swift language and Apple's guidelines, both for the development and deploiment of applications.
        
        As the only developer in some of those StartUps I had the opportunity to work with many of the Frameworks that Apple has to offer.
        
        Upon entering Banco Azteca I managed to share my development experience with the iOS team and substantially improved my skills as a leader.
        """
    }
    
}
