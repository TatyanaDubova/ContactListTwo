//
//  DetailsInfoView.swift
//  ContactListTwo
//
//  Created by Татьяна Дубова on 26.12.2023.
//

import SwiftUI

struct DetailsInfoView: View {
    
    let person: Person
    
    var body: some View {
        ZStack {
            List {
                Section {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.leading, 100)
                    
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
            }
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    DetailsInfoView(person: Person.getNewMixedContactList().first!)
}
