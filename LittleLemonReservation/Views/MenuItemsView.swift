//
//  MenuItemsView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
		List {
			MenuItemView(title: "Bruschetta",
						 description: "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
					  price: 7.99)
			MenuItemView(title: "Bruschetta",
						 description: "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
					  price: 7.99)
			MenuItemView(title: "Bruschetta",
						 description: "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
					  price: 7.99)
			MenuItemView(title: "Bruschetta",
						 description: "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
					  price: 7.99)
		}
    }
}

struct MenuItems_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
