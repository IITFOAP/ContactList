//
//  DataStore.swift
//  
//
//  Created by Рома Баранов on 18.04.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "John",
        "Jane",
        "Bob",
        "Alice",
        "David",
        "Emily"
    ]
    
    let surnames = [
        "Doe",
        "Smith",
        "Johnson",
        "Brown",
        "Lee",
        "Taylor"
    ]
    
    let emails = [
        "price@google.com",
        "zakaz@yandex.ru",
        "info@ndlap.ru",
        "please@mail.bk",
        "help@mail.ru",
        "info@google.com"
    ]
    
    let phones = [
        "555-1234",
        "555-5678",
        "555-9012",
        "555-3456",
        "555-9162",
        "555-3112"
    ]
    
    private init() { }
}
