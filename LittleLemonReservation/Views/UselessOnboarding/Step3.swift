//
//  Step3.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 17/07/23.
//

import SwiftUI

struct Step3: View {
	
	@AppStorage("phone") private var textField = ""
	
	@State private var buttonPressed = false
	
	var body: some View {
		VStack(alignment: .center) {
			Text("This onboarding would assure a refusal from App Store, but this is the assignment.")
				.font(.headline)
				.padding()
			Text("Please enter your telephone number.")
				.font(.subheadline)
				.padding()
			TextField("telephone", text: $textField)
				.padding()
			Button("next") {
				self.buttonPressed = true
			}
			.buttonStyle(.borderedProminent)
			.navigationTitle("Step3")
			.navigationDestination(isPresented: $buttonPressed) {
				HomeView()
					.navigationBarBackButtonHidden()
			}
		}
	}
}

struct Step3_Previews: PreviewProvider {
	static var previews: some View {
		OnboardingView()
	}
}
