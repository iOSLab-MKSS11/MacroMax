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
	func deleteExercise(exercise: Exercise) -> Result<String, Error>
	func fetchExercises() -> Result<[Exercise], Error>
	
	// Meal
//	func createMeal() -> Result<Meal, Error>
//	func deleteMeal() -> Result<String, Error>
	
	// Workout
//	func createWorkout() -> Result<Workout, Error>
//	func deleteWorkout() -> Result<String, Error>
}


final class DataController: DataControllerProtocol {
	
	static let shared = DataController()
	
	let persistentContainer: NSPersistentContainer
	
	var viewContext: NSManagedObjectContext {
		self.persistentContainer.viewContext
	}
	
	private init() {
		
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
			
			return .success(newExercise)
		} catch {
			print("Could not create exercise: \(error.localizedDescription)")
			
			return .failure(DataError.failedToCreate)
		}
		
	}
	
	func deleteExercise(exercise: Exercise) -> Result<String, Error> {
		
		let exerciseName = exercise.name ?? "Unknown Exercise Name"
		self.viewContext.delete(exercise)
		
		do {
			try viewContext.save()
			
			return .success(exerciseName)
		} catch {
			return .failure(DataError.failedToDelete)
		}
		
	}
	
	func fetchExercises() -> Result<[Exercise], Error> {
		
		let fetchRequest = NSFetchRequest<Exercise>(entityName: "Exercise")
		
		do {
			let result = try self.viewContext.fetch(fetchRequest)
			
			return .success(result)
		} catch {
			return .failure(DataError.failedToFetch)
		}
		
	}
	
	func checkFirstLogin() -> Result<Bool, Error>  {
		
		let fetchRequest = NSFetchRequest<Profile>(entityName: "Profile")
		
		do {
			let result = try viewContext.fetch(fetchRequest)
			
			return .success(result.isEmpty)
		} catch {
			return .failure(DataError.failedToCheckFirstLogin)
		}
		
	}
	
	func createProfile(wrapper: ProfileWrapper) -> Result<Profile, Error> {
		let profile = Profile(context: self.viewContext)
		profile.id = wrapper.id
		profile.name = wrapper.name
		profile.password = wrapper.password
		profile.user = wrapper.username
		
		do {
			try viewContext.save()
			return .success(profile)
		} catch {
			return .failure(error)
		}
	}
}

enum DataError: Error {
	case failedToCreate
	case failedToDelete
	case failedToFetch
	case failedToCheckFirstLogin
	
	var description: String {
		switch self {
		case .failedToCreate:
			return "CoreData failed to create object"
		case .failedToDelete:
			return "CoreData failed to delete object"
		case .failedToFetch:
			return "CoreData failed to fetch objects"
		case .failedToCheckFirstLogin:
			return "CoreData failed to check first login"
		}
	}
}
