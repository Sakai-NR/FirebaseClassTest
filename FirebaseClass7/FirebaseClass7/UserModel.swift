//
//  UserModel.swift
//  FirebaseClass7
//
//  Created by 酒井典昭 on 2019/09/22.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseDatabase

// MARK: - Property
class UserModel {
    var id: String?
    
}

// MARK: - Method
extension UserModel {
    static func setparamater(reqest: UserModel)-> [String: Any] {
        var param = [String: Any]()
        if let id = reqest.id{ param["id"] = id }
        
        return param
    }
    
    static func update(reqest:UserModel,sacsess:@escaping() -> Void) {
        let dbRef = Database.database().reference().child("users")
        let param = setparamater(reqest: reqest)
        dbRef.updateChildValues(param)
    }
}
