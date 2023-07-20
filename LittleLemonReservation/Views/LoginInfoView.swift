//
//  LoginInfoView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 14/07/23.
//

import SwiftUI

struct LoginInfoView: View {
	
	@AppStorage("login") private var login: Bool?
	
	@State var firstName = ""
	@State var lastName = ""
	@State var email = ""
	@State var phoneNumber = ""
	@State var isChecked = true
	
    var body: some View {
		VStack {
			HeaderView()
			List {
				Section("Avatar") {
					HStack {
						Image("profile-pic")
							.resizable()
							.aspectRatio(CGSize(width: 60, height: 60), contentMode: .fit)
							.frame(maxWidth: 60, alignment: .trailing)
						Spacer()
						Button("Change") {}
							.buttonStyle(.bordered)
							.background(Color("PrimaryColor"))
							.cornerRadius(14)
						Spacer()
						Button("Remove") {}
							.buttonStyle(.bordered)
							.border(Color("TextColor"))
							.foregroundColor(Color("PrimaryColor"))
						Spacer()
					}
				}
				Section("First Name") {
					TextField("Tilly", text: $firstName)
				}
				Section("Last Name") {
					TextField("Doe", text: $lastName)
				}
				Section("email") {
					TextField("tillydoe@example.com", text: $email)
				}
				Section("Phone Number") {
					TextField("(217) 555-0113", text: $phoneNumber)
				}
				Section("Email notifications") {
					Toggle(isOn: $isChecked) {
						Text("Order Statuses")
					}.toggleStyle(.switch)
					Toggle(isOn: $isChecked) {
						Text("Password changes")
					}.toggleStyle(.switch)
					Toggle(isOn: $isChecked) {
						Text("Special offers")
					}.toggleStyle(.switch)
					Toggle(isOn: $isChecked) {
						Text("Newsletter")
					}.toggleStyle(.switch)
				}
				Section {
					HStack {
						Spacer()
						Button("Log out") {
							login = nil
						}
						Spacer()
					}
				}
				Section {
					HStack {
						Button("Discard changes") {}
						Spacer()
						Button("Save changes") {}
					}
				}
			}.listStyle(.insetGrouped)
		}
    }
}

struct LoginInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LoginInfoView()
    }
}
