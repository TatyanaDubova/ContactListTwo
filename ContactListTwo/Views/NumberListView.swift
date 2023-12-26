//
//  NumberListView.swift
//  ContactListTwo
//
//  Created by Татьяна Дубова on 26.12.2023.
//

import SwiftUI

struct NumberListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(Color.blue)
                            Text(person.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(Color.blue)
                            Text(person.email)
                        }
                    }
                    .textCase(.none)
                }
                .navigationBarTitle("Contact List")
            }
        }
    }
}

#Preview {
    NumberListView(persons: Person.getNewMixedContactList())
}
