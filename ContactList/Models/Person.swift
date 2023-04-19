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
        let persons: DataStore = .shared
        var result: [Person] = []
        
        for _ in 1...persons.names.count {
            let randomName = persons.names.randomElement() ?? ""
            persons.names.removeAll(where: { $0 == randomName})
            
            let randomSurname = persons.surnames.randomElement() ?? ""
            persons.surnames.removeAll(where: { $0 == randomSurname})
            
            let randomEmail = persons.emails.randomElement() ?? ""
            persons.emails.removeAll(where: { $0 == randomEmail})
            
            let randomPhone = persons.phones.randomElement() ?? ""
            persons.phones.removeAll(where: { $0 == randomPhone})
            
            result.append(Person(
                name: randomName,
                surname: randomSurname,
                email: randomEmail,
                phone: randomPhone)
            )
        }
        
        return result
    }
}
