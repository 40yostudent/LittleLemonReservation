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
				.foregroundColor(Color("TextColor"))
				.font(.custom("Karla-Bold", size: 20, relativeTo: .body))
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
			.buttonStyle(.bordered)
			.foregroundColor(Color("TextColor"))
			.font(.custom("Karla-Bold", size: 14, relativeTo: .body))
			.fontWeight(.bold)
			.background(Color("BackgroundColor"))
			.cornerRadius(14)
	}
}
