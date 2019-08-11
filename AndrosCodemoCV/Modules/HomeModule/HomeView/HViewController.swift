//
//  HViewController.swift
//  AndrosCodemoCV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

protocol HView: class {
    
    func dataReady() -> Void
    
}

class HViewController: UITableViewController {

    //MARK:Properties
    public var presenter: HPresentation!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = NSLocalizedString("Welcome",
                                                 tableName: "HomeModuleStrings",
                                                 comment  : "")
        presenter.viewDidLoad()
    }
    
}

extension HViewController: HView {
    
    func dataReady() {
        self.tableView.reloadData()
    }
    
}

//MARK:Table handling
extension HViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfElements
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HTableViewCell = tableView.dequeueCell(for: indexPath)
        presenter.prepare(cell  : cell,
                          forRow: indexPath.row)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectElement(row: indexPath.row)
    }
    
}
