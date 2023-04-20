//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 19.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let personVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let fullVC = viewControllers?.last as? FullListViewController else { return }
        
        let persons = Person.getPerson()
        personVC.persons = persons
        fullVC.persons = persons
            
    }
}
