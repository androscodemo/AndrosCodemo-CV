//
//  HomeViewController.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

protocol HomeView: class {
    
    func setElements(homeModel: HomeModel) -> Void
    
}

class HomeViewController: UITableViewController {

    //MARK:Properties
    var presenter: HomePresentation!
    
    var elements: [HomeElement] = [] {
        didSet { tableView.reloadData() }
    }
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = NSLocalizedString("Welcome",
                                                 tableName: "HomeModuleStrings",
                                                 comment  : "")
        presenter.viewDidLoad()
    }
    
    //MARK:Private Functions
    private func prepare(cell: HomeViewCell, forRow row: Int) {
        let element = elements[row]
        cell.setImage(named: element.iconName)
        cell.setTitle(element.title)
    }
    
}

extension HomeViewController: HomeView {
    
    func setElements(homeModel: HomeModel) {
        DispatchQueue.main.async {
            self.elements = homeModel.elements
        }
    }
    
}

//MARK:Table handling
extension HomeViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeViewCell = tableView.dequeueCell(for: indexPath)
        prepare(cell: cell, forRow: indexPath.row)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectElement(row: indexPath.row)
    }
    
}
