//
//  DataController.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 04/10/25.
//

import Foundation
import CoreData

protocol DataControllerProtocol {
	// Exercise
	func createExercise(with exercise: ExerciseWrapper) -> Result<Exercise, Error>
	func deleteExercise() -> Result<String, Error>
	
	// Meal
	func createMeal() -> Result<Meal, Error>
	func deleteMeal() -> Result<String, Error>
	
	// Workout
	func createWorkout() -> Result<Workout, Error>
	func deleteWorkout() -> Result<String, Error>
}


class DataController: DataControllerProtocol {
	
	let persistentContainer: NSPersistentContainer
	
	var viewContext: NSManagedObjectContext {
		self.persistentContainer.viewContext
	}
	
	init() {
		
		self.persistentContainer = NSPersistentContainer(name: "Models")
		
		self.persistentContainer.loadPersistentStores { (description, error) in
			if let error = error as NSError? {
				print("Unresolved error \(error), \(error.userInfo)")
			}
		}
		
	}

	
	func createExercise(with exercise: ExerciseWrapper) -> Result<Exercise, Error> {
		
		let newExercise = Exercise(context: viewContext)
		newExercise.name = exercise.name
		do {
			try viewContext.save()
		} catch {
			print("Could not create exercise: \(error.localizedDescription)")
		}
		
	}
	
}

