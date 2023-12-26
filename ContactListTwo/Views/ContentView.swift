//
//  ContentView.swift
//  ContactListTwo
//
//  Created by Татьяна Дубова on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    
   private let persons = Person.getNewMixedContactList()
    
    var body: some View {
        TabView {
            HomeScreenView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumberListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
