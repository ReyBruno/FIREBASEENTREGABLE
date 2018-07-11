//
//  User.swift
//  FirebaseEntregable
//
//  Created by Digital House on 11/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation
import Firebase
import FirebaseUI
import FirebaseAuth

class MyUser{
    var nombre:String?
    var email:String?
    var id:String?
    var avatar:URL?
    
    init(user: User){
        self.nombre = user.displayName
        self.email = user.email
        self.id = user.providerID
        self.avatar = user.photoURL
    }
    
        
    }

