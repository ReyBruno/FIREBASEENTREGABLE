//
//  LocalContactTableViewCell.swift
//  FirebaseEntregable
//
//  Created by Digital House on 10/7/18.
//  Copyright © 2018 Digital house. All rights reserved.
//

import UIKit

class LocalContactTableViewCell: UITableViewCell {
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(theContact: Contact){
        self.usernameLabel.text = theContact.name
        self.emailLabel.text = theContact.email
        self.phoneLabel.text = theContact.phone
        if theContact.isDigital == true{
            self.companyLabel.text = "DigitalHouse"
        } else{
            self.companyLabel.text = "Other"
        }
    }
    
    

}
