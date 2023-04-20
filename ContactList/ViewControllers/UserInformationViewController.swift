//
//  UserInformationViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 17.04.2023.
//

import UIKit

final class UserInformationViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = persons.fullName
        phoneLabel.text = "Phone: \(persons.phone)"
        emailLabel.text = "Email: \(persons.email) "
    }
}

