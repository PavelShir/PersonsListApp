//
//  DetailsViewController.swift
//  PersonsListApp
//
//  Created by 19543442 on 31.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var personLabel: UILabel!
    
    var emailText: String!
    var phoneText: String!
    var personText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "email: " + emailText
        phoneNumberLabel.text = "Phone number: " + phoneText
        personLabel.text = personText
        
    }
    

    
}
