//
//  NewContactViewController.swift
//  FirebaseEntregable
//
//  Created by Digital House on 16/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {
    
    let dao = ContactDao()
    var theUser:MyUser?
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var isDigitalSegmented: UISegmentedControl!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveContactTapped(_ sender: Any) {
        
        if let email = emailField.text, let phone = phoneField.text, let name = nameField.text, let user = self.theUser{
            
            if email.count > 0 || phone.count > 0 || name.count > 0 {
                if isDigitalSegmented.titleForSegment(at: isDigitalSegmented.selectedSegmentIndex) == "DigitalHouse"{
            let newContact = Contact(name: name, phone: phone, email: email, isDigital: true)
                    dao.theUser = user
                    dao.addContactInDataBaseForUser(contact: newContact)
                    
                } else{
                    let newContact = Contact(name: name, phone: phone, email: email, isDigital: false)
                    dao.theUser = user
                    dao.addContactInDataBaseForUser(contact: newContact)
                    
                }
                
                
                
            }
            
            navigationController?.popViewController(animated: true)
        }
    }

    
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
