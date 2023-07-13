//
//  HomeView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
		VStack {
			HeaderView()
			HeroView()
			MenuBreakdownView()
			MenuItemsView()
		}
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
