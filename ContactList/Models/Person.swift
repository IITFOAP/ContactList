//
//  Person.swift
//  ContactList
//
//  Created by Рома Баранов on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(surname) \(name)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.names.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}


enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
