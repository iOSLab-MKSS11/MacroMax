//
//  RegisterViewModel.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 29/11/25.
//

import Foundation
import Combine

class RegisterViewModel: ObservableObject {
	
	@Published var name: String = ""
	
	func saveProfile() {
		let wrapper = ProfileWrapper(name: self.name)
		let result = DataController.shared.createProfile(wrapper: wrapper)
		
		switch result {
		case .success(let profile):
			print(profile.name)
		case .failure(let error):
			print(error)
		}
	}
	
}
