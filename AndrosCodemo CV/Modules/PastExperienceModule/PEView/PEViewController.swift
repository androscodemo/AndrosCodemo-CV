//
//  PEViewController.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/10/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol PEView: class {
    
    func reloadData()
    
}

class PEViewController: UITableViewController {
    
    //MARK:Properties
    public var presenter: PEPresenting!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
}

//MARK:TableView handling
extension PEViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfElements
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PETableCell = tableView.dequeueCell(for: indexPath)
        presenter.prepareCell(cell, forRow: indexPath.row)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

extension PEViewController: PEView {
    
    func reloadData() {
        tableView.reloadData()
    }
    
}

