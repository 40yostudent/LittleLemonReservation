//
//  MenuItem.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 16/07/23.
//

import CoreData

struct MenuItemJSON: Codable, Identifiable {
	let id = UUID()
	let name : String
	let summary: String
	let price: Double
	let image: String
	let category: String
	
	enum CodingKeys: String, CodingKey {
		case name = "name"
		case summary = "description"
		case price = "price"
		case image = "image"
		case category = "category"
		
	}
}

struct MenuItemListJSON: Codable {
	var menu: [MenuItemJSON]
	
	enum CodingKeys: String, CodingKey {
		case menu = "menu"
	}
	
	static func getMenuData() {
		PersistenceController.shared.clear()
		
		let url = URL(string: "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/raw/main/capstone.json")
		let request = URLRequest(url: url!)
		let session = URLSession.shared
		let dataTask = session.dataTask(with: request) { data, response, error in
			if let data = data {
				if let fetchedThings = try? JSONDecoder().decode(MenuItemListJSON.self, from: data) {
					for singleItem in fetchedThings.menu {
						let newSingleItem = MenuItem(context: PersistenceController.shared.container.viewContext)
						newSingleItem.name = singleItem.name
						newSingleItem.price = singleItem.price
						newSingleItem.summary = singleItem.summary
						newSingleItem.image = singleItem.image
						newSingleItem.category = singleItem.category
					}
					try? PersistenceController.shared.container.viewContext.save()
				} else {
					print("fetchedThings ERROR: ", error.debugDescription.description)
				}
			} else {
				print("data ERROR: ", error.debugDescription.description)
			}
		}
		dataTask.resume()
	}
}
