//
//  ContentView.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import SwiftUI

struct ContentView: View {
    private var persons = Person.getPerson()
    
    var body: some View {
        TabView {
            ShortInformationList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            SectionList(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
