//
//  MenuBreakdownView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct MenuBreakdownView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Text("ORDER FOR DELIVERY!")
				.font(.custom("Karla.ttf", size: 16, relativeTo: .body))
				.fontWeight(.bold)
			HStack {
				Button("Starters") {}
					.modifier(Style())
				Button("Mains") {}
					.modifier(Style())
				Button("Desserts") {}
					.modifier(Style())
				Button("Drinks") {}
					.modifier(Style())
			}
		}
    }
}

struct MenuBreakdown_Previews: PreviewProvider {
    static var previews: some View {
        MenuBreakdownView()
    }
}

internal struct Style: ViewModifier {
	func body(content: Content) -> some View {
		content
			.foregroundColor(Color("TextColor"))
			.font(.custom("Karla", size: 16, relativeTo: .body))
			.fontWeight(.bold)
			.padding(.horizontal, 16)
			.padding(.vertical, 8)
			.background(Color("BackgroundColor"))
			.cornerRadius(16)
	}
}
