//
//  MenuItemView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct MenuItemView: View {
	
	let title: String
	let description: String
	let price: Float
	
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 8) {
				Text(title)
					.font(.custom("Karla", size: 16, relativeTo: .body))
					.fontWeight(.bold)
				Text(description)
					.font(.custom("Karla", size: 16, relativeTo: .body))
				Text(price, format: .currency(code: "USD"))
					.font(.custom("Karla", size: 16, relativeTo: .body))
			}
			Image(systemName: "photo")
				.resizable()
				.aspectRatio(CGSize(width: 60, height: 60), contentMode: .fit)
				.frame(maxWidth: 90, alignment: .trailing)
				.padding(.horizontal)
		}.frame(width: 375, height: 160)
	}
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
		MenuItemView(title: "Bruschetta",
					 description: "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
					 price: 7.99)
			.previewLayout(.sizeThatFits)
			.previewDevice(.none)
			.frame(width: 375, height: 160)
    }
}
