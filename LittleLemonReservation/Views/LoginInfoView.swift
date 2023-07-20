//
//  LoginInfoView.swift
//  LittleLemonReservation
//
//  Created by Sabino Paulicelli on 14/07/23.
//

import SwiftUI

struct LoginInfoView: View {
	
	@AppStorage("login") private var login: Bool?
	@AppStorage("name") private var name: String?
	@AppStorage("surname") private var surname: String?
	@AppStorage("email") private var email: String?
	@AppStorage("phone") private var phone: String?
	
	@State var nameField = ""
	@State var surnameField = ""
	@State var emailField = ""
	@State var phoneNumberField = ""
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
					TextField("first name", text: $nameField)
				}
				Section("Last Name") {
					TextField("last name", text: $surnameField)
				}
				Section("email") {
					TextField("email", text: $emailField)
				}
				Section("Phone Number") {
					TextField("phone number", text: $phoneNumberField)
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
						Button("Discard changes") {
							nameField = ""
							surnameField = ""
							emailField = ""
							phoneNumberField = ""
							isChecked = false
						}
						Spacer()
						Button("Save changes") {
							name = nameField
							surname = surnameField
							email = emailField
							phone = phoneNumberField
							login = true
						}
					}
				}
			}
			.listStyle(.insetGrouped)
		}
    }
}

struct LoginInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LoginInfoView()
    }
}
