//
//  HeaderView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 13/07/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
		HStack {
			Spacer().frame(maxWidth: .infinity, alignment: .trailing)
			Image("littlelemon-title")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(maxWidth: .infinity, alignment: .center)
			Image("profile-pic")
				.resizable()
				.aspectRatio(CGSize(width: 60, height: 60), contentMode: .fit)
				.frame(maxWidth: .infinity, alignment: .trailing)
				.padding(.horizontal)
		}.frame(width: 375, height: 60)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
		HeaderView()
			.previewLayout(.sizeThatFits)
			.previewDevice(.none)
			.frame(width: 375, height: 60)
    }
}
