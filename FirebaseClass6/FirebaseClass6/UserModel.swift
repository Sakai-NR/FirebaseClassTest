//
//  UserModel.swift
//  FirebaseClass6
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
    var name: String?
    var description: String?
    
}

// MARK: - Method
extension UserModel {
    static func setparamater(reqest: UserModel)-> [String: Any] {
        var param = [String: Any]()
        if let id = reqest.id{ param["id"] = id }
        if let name = reqest.name{ param["name"] = name }
        if let description = reqest.description{ param["description"] = description }
        
        return param
    }
    
    static func update(reqest:UserModel,sacsess:@escaping() -> Void) {
        let dbRef = Database.database().reference().child("users")
        let param = setparamater(reqest: reqest)
        dbRef.updateChildValues(param)
    }
}
