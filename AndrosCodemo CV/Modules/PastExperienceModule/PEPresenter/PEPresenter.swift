//
//  PEPresenter.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import Foundation.NSDate

protocol PEPresenting {
    
    var numberOfElements: Int { get }

    func viewDidLoad()
    func prepareCell(_ cell: PETableCell, forRow row: Int)
    
}

class PEPresenter {
    
    private weak var view: PEView?
    private var interactor: PEFetcher
    private var router: PERouting
    
    private var elements = [PastExperienceModel]()
    
    private lazy var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        formatter.locale    = .current
        return formatter
    }()
    
    init(view: PEView, interactor: PEFetcher, router: PERouting) {
        self.view       = view
        self.interactor = interactor
        self.router     = router
    }
    
}

extension PEPresenter: PEPresenting {
    
    var numberOfElements: Int {
        return elements.count
    }
    
    func viewDidLoad() {
        elements = interactor.getData()
        view?.reloadData()
    }
    func prepareCell(_ cell: PETableCell, forRow row: Int) {
        let element = elements[row]
        cell.setImage(named: element.iconName)
        cell.setTitle(element.title)
        cell.setSubtitle(element.subtitle)
        var dateTemp = formatter.string(from: element.initialDate) + " - "
        if let finalDate = element.finalDate {
            dateTemp += formatter.string(from: finalDate)
        } else {
            dateTemp += NSLocalizedString("Present",
                                          tableName: "HomeModuleStrings",
                                          comment  : "")
        }
        cell.setDate(dateTemp)
        cell.setDescription(element.description)
    }
    
}
