//
//  FirstViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 19.04.2023.
//
//
//import UIKit
//
//class FirstViewController: UITabBarController {
//    let persons = Person.getPerson()
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBC = segue.destination as? UITabBarController else { return }
//        guard let tabControllers = tabBC.viewControllers else { return }
//
//        tabControllers.forEach { tabController in
//            if let personsVC = tabController as? PersonsListViewController {
//                personsVC.person = persons
//            } else if let fullVC = tabController as? FullListViewController {
//                fullVC.person = persons
//            }
//        }
//    }
//}
