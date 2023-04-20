//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 17.04.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let personList = persons[indexPath.row]
        
        content.text = personList.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personList = persons[indexPath.row]
        let userVC = segue.destination as? UserInformationViewController
        userVC!.persons = personList
    }
}

