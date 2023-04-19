//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Рома Баранов on 17.04.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {

    let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personList = person[indexPath.row]
        let userVC = segue.destination as? UserInformationViewController
        userVC?.person = personList
    }
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let personList = person[indexPath.row]
        content.text = personList.fullName
        cell.contentConfiguration = content

        return cell
    }
}
