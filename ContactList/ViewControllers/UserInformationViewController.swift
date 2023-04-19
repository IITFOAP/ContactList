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
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(person.fullName )"
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email) "
    }
}

