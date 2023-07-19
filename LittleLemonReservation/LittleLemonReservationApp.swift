//
//  LittleLemonReservationApp.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

@main
struct LittleLemonReservationApp: App {
	
	@AppStorage("name", store: .standard) private var name: String?
	
    let persistenceController = PersistenceController.shared
	
    var body: some Scene {
        WindowGroup {
			NavigationStack {
				if (name != nil) {
					HomeView()
						.environment(\.managedObjectContext, persistenceController.container.viewContext)
				} else {
					OnboardingView()
						.environment(\.managedObjectContext, persistenceController.container.viewContext)
				}
			}
        }
    }
}
