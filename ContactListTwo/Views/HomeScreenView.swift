//
//  HomeScreenView.swift
//  ContactListTwo
//
//  Created by Татьяна Дубова on 26.12.2023.
//

import SwiftUI

struct HomeScreenView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: DetailsInfoView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    HomeScreenView(persons: Person.getNewMixedContactList())
}
