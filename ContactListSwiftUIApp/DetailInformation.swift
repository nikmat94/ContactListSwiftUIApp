//
//  DetailInformation.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import SwiftUI

struct DetailInformation: View {
    let person: Person

    var body: some View {
        NavigationView {
            List {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .offset(x: 115, y: 0)
                    .padding()
                HStack {
                    Image(systemName: "mail")
                        .foregroundColor(.blue)
                    Text("\(person.email)")
                }
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Text("\(person.phoneNumber)")
                }
            }
            .navigationBarTitle("\(person.fullName)")
        }
    }
}

struct DetailInformation_Previews: PreviewProvider {
    static var previews: some View {
        DetailInformation(
            person: Person.init(id: 1,
                                name: "aba",
                                secondName: "aba",
                                phoneNumber: "123",
                                email: "mail"))
    }
}
