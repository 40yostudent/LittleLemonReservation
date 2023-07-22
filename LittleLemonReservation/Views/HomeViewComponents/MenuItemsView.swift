//
//  MenuItemsView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct MenuItemsView: View {
		
	@State var startersIsEnabled = true
	@State var mainsIsEnabled = true
	@State var dessertsIsEnabled = true
	@State var drinksIsEnabled = true
	
	@State var searchText = ""
	
	@State var loaded = false
	
    var body: some View {
		FetchedObjects(predicate: buildPredicate(),
					   sortDescriptors: buildSortDescriptors()) {
			(rowItems: [MenuItem]) in
			List(rowItems) { rowItem in
				MenuItemView(title: rowItem.name ?? "name",
							 description: rowItem.summary ?? "summary",
							 price: rowItem.price,
							 imageURL: URL(string: "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/images/" + rowItem.image! + "?raw=true")!)
			}
			.listStyle(.plain)
			.onAppear {
				if !loaded {
					MenuItemListJSON.getMenuData()
					loaded = true
				}
			}
		}
	}
	
	func buildSortDescriptors() -> [NSSortDescriptor] {
		return [NSSortDescriptor(key: "name",
								  ascending: true,
								  selector:
									#selector(NSString.localizedStandardCompare))]
	}
	
	func buildPredicate() -> NSCompoundPredicate {
		let search = searchText == "" ? NSPredicate(value: true) : NSPredicate(format: "title CONTAINS[cd] %@", searchText)
		let starters = !startersIsEnabled ? NSPredicate(format: "category != %@", "starters") : NSPredicate(value: true)
		let mains = !mainsIsEnabled ? NSPredicate(format: "category != %@", "mains") : NSPredicate(value: true)
		let desserts = !dessertsIsEnabled ? NSPredicate(format: "category != %@", "desserts") : NSPredicate(value: true)
		let drinks = !drinksIsEnabled ? NSPredicate(format: "category != %@", "drinks") : NSPredicate(value: true)

		let compoundPredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [search, starters, mains, desserts, drinks])
		return compoundPredicate
	}
}

struct MenuItems_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
