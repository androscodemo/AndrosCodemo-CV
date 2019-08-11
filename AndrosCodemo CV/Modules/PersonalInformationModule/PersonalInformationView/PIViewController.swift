//
//  PIViewController.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit.UIViewController

protocol PIView: class {
    
    func setAge          (_ age: String)        -> Void
    func setName         (_ name: String)       -> Void
    func setPicture      (_ imageName: String)  -> Void
    func setBirthdate    (_ birthdate: String)  -> Void
    func setEducation    (_ education: String)  -> Void
    func setBirthplace   (_ birthplace: String) -> Void
    func setDependants   (_ dependants: String) -> Void
    func setMaritalStatus(_ status: String)     -> Void
    
}

class PIViewController: UIViewController {
    
    //MARK:IBOutlets
    @IBOutlet private weak var imvPicture   : UIImageView!
    @IBOutlet private weak var lblName      : UILabel!
    @IBOutlet private weak var lblAge       : UILabel!
    @IBOutlet private weak var lblBirthDate : UILabel!
    @IBOutlet private weak var lblBirthPlace: UILabel!
    @IBOutlet private weak var lblEducation : UILabel!
    @IBOutlet private weak var lblMarital   : UILabel!
    @IBOutlet private weak var lblDependants: UILabel!
    
    //MARK:Properties
    public var presenter: PIPresentation!
    
    //MARK:Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

}

extension PIViewController: PIView {
    
    func setAge(_ age: String) {
        lblAge.text = age
    }
    
    func setName(_ name: String) {
        lblName.text = name
    }
    
    func setPicture(_ imageName: String) {
        imvPicture.image = UIImage(named: imageName)
    }
    
    func setBirthdate(_ birthdate: String) {
        lblBirthDate.text = birthdate
    }
    
    func setEducation(_ education: String) {
        lblEducation.text = education
    }
    
    func setBirthplace(_ birthplace: String) {
        lblBirthPlace.text = birthplace
    }
    
    func setDependants(_ dependants: String) {
        lblDependants.text = dependants
    }
    
    func setMaritalStatus(_ status: String) {
        lblMarital.text = status
    }
    
}
