//
//  LittleLemonReservationApp.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

@main
struct LittleLemonReservationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
