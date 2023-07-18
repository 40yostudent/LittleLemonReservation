//
//  OnboardingView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 16/07/23.
//

import SwiftUI

struct OnboardingView: View {
	
	@AppStorage("name") private var textField = ""
	@AppStorage("surname") private var textField2 = ""
	
	@State private var buttonPressed = false
	
    var body: some View {
		VStack(alignment: .center) {
			Text("This onboarding would assure a refusal from App Store, but this is the assignment.")
				.font(.headline)
				.padding()
			Text("Please enter your personal details.")
				.font(.subheadline)
				.padding()
			TextField("Name", text: $textField)
				.padding()
			TextField("Surname", text: $textField2)
				.padding()
			Button("next") {
				self.buttonPressed = true
			}
			.buttonStyle(.borderedProminent)
			.navigationTitle("Step1")
			.navigationDestination(isPresented: $buttonPressed) {
				Step2()
			}
		}
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
