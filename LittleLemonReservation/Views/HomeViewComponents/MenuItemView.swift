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
	let price: Double
	let imageURL: URL
	
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 8) {
				Text(title)
					.font(.custom("Karla-Bold", size: 16, relativeTo: .body))
				Text(description)
					.font(.custom("Karla-Regular", size: 16, relativeTo: .body))
				Text(price, format: .currency(code: "USD"))
					.font(.custom("Karla-Regular", size: 16, relativeTo: .body))
			}
			AsyncImage(url: imageURL) { image in
				image
					.resizable()
					.aspectRatio(contentMode: .fill)
					.padding(.horizontal)
			} placeholder: {
				ProgressView()
			}
			.frame(maxWidth: 90, maxHeight: 90)
			.clipShape(Rectangle())
		}.frame(width: 375, height: 160)
	}
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
		MenuItemView(title: "Bruschetta",
					 description: "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
					 price: 7.99,
					 imageURL: URL(string: "https://github.com/Meta-Mobile-Developer-PC/Working-With-Data-API/blob/main/images/pasta.jpg?raw=true")!)
			.previewLayout(.sizeThatFits)
			.previewDevice(.none)
			.frame(width: 375, height: 160)
    }
}
