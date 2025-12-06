//
//  ProfileWrapper.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 29/11/25.
//

import Foundation

struct ProfileWrapper {
	let id = UUID()
	let name: String
	let password: String?
	let username: String?
	
	init(name: String, password: String?, username: String?) {
		self.name = name
		self.password = password
		self.username = username
	}
	
	init(name: String) {
		self.name = name
		self.password = nil
		self.username = nil
	}
}
