//
//  TOKInteractor.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

protocol TOKFetcher {
    
    func getTopicsOfKnowledge() -> TopicsOfKnowledgeModel
    
}

class TOKInteractor {
    
}

extension TOKInteractor: TOKFetcher {
    
    func getTopicsOfKnowledge() -> TopicsOfKnowledgeModel {
        return TopicsOfKnowledgeModel(software: """
Xcode
Android Studio
Arduino Studio
iWorks
Microsoft Office
""",
                                      languajes: """
Español (Native)
English (B2)
Deutch (A1)
""",
                                      interests: """
Technology
Music
Videogames
""",
                                      programmingLanguajes: """
Swift
Java
C++
C#
C
""")
    }
    
}
