//
//  Contact.swift
//  FirebaseEntregable
//
//  Created by Digital House on 12/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation

class Contact{
    var name:String?
    var phone:String?
    var email:String?
    var isDigital:Bool?
    
    init(dictionary: [String:AnyObject]){
        self.name = dictionary["name"] as? String ?? "no-name"
        self.phone = dictionary["phone"] as? String ?? "no-phone"
        self.email = dictionary["email"] as? String ?? "no-email"
        self.isDigital = dictionary["isDigital"] as? Bool ?? false
        
    }

}
