//
//  Person.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let secondName: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    let phoneNumber: String
    let email: String
}

extension Person {
   
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let newNames = DataManager.shared.names.shuffled()
        let newSecondNames = DataManager.shared.secondNames.shuffled()
        let newPhoneNumber = DataManager.shared.phoneNumbers.shuffled()
        let newEmails = DataManager.shared.emails.shuffled()
        let id = DataManager.shared.id.shuffled()

        for index in 0..<DataManager.shared.names.count {
            persons.append(Person(id: id[index],
                                  name: newNames[index],
                                  secondName: newSecondNames[index],
                                  phoneNumber: newPhoneNumber[index],
                                  email: newEmails[index]))
        }
        return persons
    }
}
