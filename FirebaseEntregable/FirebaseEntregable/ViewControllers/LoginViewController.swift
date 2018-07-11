//
//  LoginViewController.swift
//  FirebaseEntregable
//
//  Created by Digital House on 10/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import UIKit
import Firebase
import FirebaseUI

class LoginViewController: UIViewController, FUIAuthDelegate{
    
    var ref: DatabaseReference!

    @IBAction func GoogleTapped(_ sender: Any) {
        loginSession()
    }
    
    func configureFirebaseAuthUI() {
        
        let googleProvider = FUIGoogleAuth()
        let providers:[FUIAuthProvider] = [googleProvider]
        FUIAuth.defaultAuthUI()?.providers = providers
    }
    
    func loginSession() -> Void {
        let authViewController = FUIAuth.defaultAuthUI()!.authViewController()
        present(authViewController, animated: true, completion: {print("Completion")})
    }
    

    var authUI:FUIAuth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureFirebaseAuthUI()
        
         ref = Database.database().reference()
            
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if (AuthenticationService().isLoguedIn()) {
            self.performSegue(withIdentifier: "logginOK", sender: self)
        }
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        
            if let destination = segue.destination as? ContactsTableViewController{
                if (AuthenticationService().isLoguedIn()) {
                    if let userOtoUserV = AuthenticationService().currentUser(){
                        let userVtoMyUser = MyUser(user: userOtoUserV)
                            destination.theUser = userVtoMyUser
                        
                    }
            }
            
            
        }
    }
        
    

        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
