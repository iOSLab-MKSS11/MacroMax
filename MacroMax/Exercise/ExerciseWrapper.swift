//
//  ExerciseWrapper.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 04/10/25.
//

import Foundation

struct ExerciseWrapper {
	let id = UUID()
	var name: String
	var repsCount: Int
	var seriesCount: Int
	var restTime: Int?
	var weigth: Int?
	var videoLink: String?
}
