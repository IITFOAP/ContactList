//
//  FullListViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 19.04.2023.
//

import UIKit

final class FullListViewController: UITableViewController {
    
    var person: [Person]!
    var contacts: [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSections()
    }
}

// MARK: - Privates metod
extension FullListViewController {
    private func createSections() {
        let numberOfSections = person.count
        
        for contact in person {
            let sectionTitle = contact.fullName
            contacts.append(["fullName": sectionTitle])
        }
        
        for number in 0..<numberOfSections {
            let contact = person[number]
            let sectionEmail = contact.email
            let sectionPhone = contact.phone
            contacts[number]["email"] = sectionEmail
            contacts[number]["phone"] = sectionPhone
        }
    }
}

 //MARK: - UITableViewDataSource
extension FullListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section]["fullName"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firsName", for: indexPath)
        
        let contact = person[indexPath.section]
        
        if indexPath.row == 0 {
            var content = UIListContentConfiguration.subtitleCell()
            content.text = "Phone: \(contact.phone)"
            cell.contentConfiguration = content
        } else if indexPath.row == 1 {
            var content = UIListContentConfiguration.subtitleCell()
            content.text = "Mail: \(contact.email)"
            cell.contentConfiguration = content
        }
        
        return cell
    }
}
