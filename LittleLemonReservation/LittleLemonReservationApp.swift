//
//  LittleLemonReservationApp.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

@main
struct LittleLemonReservationApp: App {
	
	@AppStorage("login") private var login: Bool?
	
    let persistenceController = PersistenceController.shared
	
    var body: some Scene {
        WindowGroup {
			NavigationStack {
				if (login == nil) {
					//LoginInfoView()
					OnboardingView()
						.environment(\.managedObjectContext, persistenceController.container.viewContext)
				} else {
					HomeView()
						.environment(\.managedObjectContext, persistenceController.container.viewContext)
				}
			}
        }
    }
}
