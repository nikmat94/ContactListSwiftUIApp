//
//  SectionList.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import SwiftUI

struct SectionList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) {person in
                VStack {
                    Section(
                        header: Text("\(person.fullName)")
                            .font(.headline)
                            .frame(width: 200,
                                   height: 30,
                                   alignment: .leading))
                    {
                        HStack {
                            Image(systemName: "mail")
                                .foregroundColor(.blue)
                            Text("\(person.email)")
                                .frame(width: 200,
                                       height: 40,
                                       alignment: .leading)
                        }
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(person.phoneNumber)")
                                .frame(width: 200,
                                       height: 40,
                                       alignment: .leading)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Contact List"))
        }
    }
}

struct SectionList_Previews: PreviewProvider {
    static var previews: some View {
        SectionList(persons: Person.getPerson())
    }
}
