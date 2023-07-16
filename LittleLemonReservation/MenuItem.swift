//
//  MenuItem.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 16/07/23.
//

import Foundation

struct MenuItemJSON: Codable, Identifiable {
	let id = UUID()
	let name : String
	let summary: String
	let price: String
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
	let menu: [MenuItemJSON]
	
	enum CodingKeys: String, CodingKey {
		case menu = "menu"
	}
}
