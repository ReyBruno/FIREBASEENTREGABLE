//
//  ContactsDao.swift
//  FirebaseEntregable
//
//  Created by Digital House on 12/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation
import Firebase

class ContactDao{
    var ref = Database.database().reference()
    var theUser:MyUser?
    
    
    func addContactInDataBaseForUser(contact: Contact){
        if let user = theUser{
            if let userId = user.id, let phone = contact.phone, let name = contact.name, let email = contact.email, let isDigital = contact.isDigital{
        ref.child("users").child(userId).child("contacts").child(phone).child("name").setValue(name)
        ref.child("users").child(userId).child("contacts").child(phone).child("phone").setValue(phone)
        ref.child("users").child(userId).child("contacts").child(phone).child("email").setValue(email)
        ref.child("users").child(userId).child("contacts").child(phone).child("isDigital").setValue(isDigital)
            
                
            
                
            }
        }
    }
    
    
    /* var databaseRef:DatabaseReference?
    
    func observeNewContacts(action: @escaping ((Contact) -> Void)){
        let contactsRef = databaseRef?.child("contacts")
        contactsRef?.observe(.childAdded, with: { snapshot in
            if let contactDictionary = snapshot.value as? [String : AnyObject] {
                let newContact = Contact(dictionary: contactDictionary)
                action(newContact)
            }
            
            
        })
        
    } */
}

