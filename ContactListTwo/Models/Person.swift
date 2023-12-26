//
//  Person.swift
//  ContactListTwo
//
//  Created by Татьяна Дубова on 26.12.2023.
//

struct Person: Identifiable {
    var id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getNewMixedContactList() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        
        let count = [names.count, surnames.count, emails.count, phoneNumbers.count].min() ?? 0
        
        for index in 0..<count {
            let person = Person(id: index,
                                name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phoneNumbers[index])
            persons.append(person)
        }
        return persons
    }
}
