//
//  MainViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 19.04.2023.
//

import UIKit

final class MainViewController: UITabBarController {
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let fullVC = $0 as? FullListViewController {
                fullVC.person = person
            }
            if let personVC = $0 as? PersonsListViewController {
                personVC.person = person
            }
        }
    }
}
