//
//  ShortInformationList.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import SwiftUI

struct ShortInformationList: View {
    let persons: [Person]

    var body: some View {
        NavigationView{
                List(persons) { person in
                    NavigationLink(
                        destination: DetailInformation(person: person))
                    {
                        Text("\(person.fullName)")
                    }
                }
                .navigationBarTitle("Contact List")
        }
    }
}

struct ShortInformationList_Previews: PreviewProvider {
    static var previews: some View {
        ShortInformationList(persons: Person.getPerson())
    }
}
