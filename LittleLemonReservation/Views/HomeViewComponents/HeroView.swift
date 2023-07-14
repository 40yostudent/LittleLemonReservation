//
//  HeroView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct HeroView: View {
	
	@State var text: String = ""
	@State private var isEditing = false
	
    var body: some View {
		VStack {
			HStack(alignment: .bottom) {
				VStack(alignment: .leading) {
					Text("Little Lemon")
						.font(.custom("MarkaziText-Regular", size: 32, relativeTo: .headline))
						.foregroundColor(.accentColor)
					VStack(alignment: .leading) {
						Text("Chicago")
							.font(.custom("MarkaziText-Regular", size: 24, relativeTo: .subheadline))
							.foregroundColor(.white)
						Spacer()
						Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
							.font(.custom("Karla-Regular", size: 16, relativeTo: .body))
							.foregroundColor(.white)
					}
				}
				Image("hero-image")
					.resizable()
					.cornerRadius(16)
					.frame(width: 128, height: 128, alignment: .bottomTrailing)
			}
			.padding()
			.background(Color("PrimaryColor"))
		}.frame(width: 375, height: 200)
    }
}

struct Hero_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
			.previewLayout(.sizeThatFits)
			.previewDevice(.none)
			.frame(width: 375, height: 240)
    }
}
