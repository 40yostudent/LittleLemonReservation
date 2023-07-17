//
//  Step2.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 17/07/23.
//

import SwiftUI

struct Step2: View {
	
	@State private var textField = ""
	
	@State private var buttonPressed = false
	
	var body: some View {
		VStack(alignment: .center) {
			Text("This onboarding would assure a refusal from App Store, but this is the assignment.")
				.font(.headline)
				.padding()
			Text("Please enter your email.")
				.font(.subheadline)
				.padding()
			TextField("email", text: $textField)
				.padding()
			Button("next") {
				self.buttonPressed = true
				// TODO: save email
			}
			.buttonStyle(.borderedProminent)
			.navigationTitle("Step2")
			.navigationDestination(isPresented: $buttonPressed) {
				Step3()
			}
		}
	}
}

struct Step2_Previews: PreviewProvider {
	static var previews: some View {
		OnboardingView()
	}
}
