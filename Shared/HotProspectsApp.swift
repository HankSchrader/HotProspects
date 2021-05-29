//
//  HotProspectsApp.swift
//  Shared
//
//  Created by Erik Mikac on 5/29/21.
//

import SwiftUI

@main
struct HotProspectsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
