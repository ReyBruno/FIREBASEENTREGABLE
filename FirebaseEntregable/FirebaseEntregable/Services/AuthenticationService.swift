//
//  AuthenticationService.swift
//  FirebaseEntregable
//
//  Created by Digital House on 11/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import Foundation


import Foundation
import Firebase
import FirebaseUI

class AuthenticationService {
    
    func configureFirebaseAuthUI() {
        let googleProvider = FUIGoogleAuth()
        let providers:[FUIAuthProvider] = [googleProvider]
        FUIAuth.defaultAuthUI()?.providers = providers
    }
    
    
    func currentUser() -> User? {
        return Auth.auth().currentUser
        
    }
    func isLoguedIn() -> Bool {
        return currentUser() != nil
    }
    
    func logoutSession() -> Void {
        do {
            try Auth.auth().signOut()
        } catch {
            print("unable to sign out: \(error)")
        }
    }
    
    
}
