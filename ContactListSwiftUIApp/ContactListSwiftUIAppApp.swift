//
//  ContactListSwiftUIAppApp.swift
//  ContactListSwiftUIApp
//
//  Created by Никита  on 16.06.2021.
//

import SwiftUI

@main
struct ContactListSwiftUIAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
