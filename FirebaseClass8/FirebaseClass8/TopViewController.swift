//
//  TopViewController.swift
//  FirebaseClass8
//
//  Created by 酒井典昭 on 2019/09/22.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopViewController: BaseViewController {
    var userModel = UserModel()
    
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        
        userModel.id = "1"
        
        UserModel.update(reqest: userModel) {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopViewController {
    
}

// MARK: - method
extension TopViewController {
    
}

