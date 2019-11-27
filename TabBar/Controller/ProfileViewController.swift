//
//  ProfileViewController.swift
//  TabBar
//
//  Created by Rustem Supayev on 25/11/2019.
//  Copyright © 2019 Rustem Supayev. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()

    }
    
    func setupUI() {
        
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Profile"
        
    }

}
