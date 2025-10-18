//
//  MacroMaxApp.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 04/10/25.
//

import SwiftUI

@main
struct MacroMaxApp: App {
	
	@State var currentView: Int = 1
	@State var onboardingIsPresented = false
	
	var body: some Scene {
		WindowGroup {
			TabView(selection: $currentView) {
				MealView()
					.tag(0)
					.tabItem {
						Image(systemName: "fork.knife")
					}
				
				HomeView()
					.tag(1)
					.tabItem {
						Image(systemName: "figure.cooldown")
					}
				
				ContentView()
					.tag(2)
					.tabItem {
						Image(systemName: "person.fill")
					}
			}
			.onAppear {
				let result = DataController.shared.checkFirstLogin()
				
				switch result {
				case .success(let isFirstLogin):
					onboardingIsPresented = isFirstLogin
				case .failure(let error):
					print(error.localizedDescription)
				}
			}
			.fullScreenCover(isPresented: $onboardingIsPresented) {
				OnboardingView()
			}
		}
	}
}

#Preview {
	@Previewable @State var currentView: Int = 1
	
	TabView(selection: $currentView) {
		MealView()
			.tag(0)
			.tabItem {
				Image(systemName: "fork.knife")
			}
			
		
		HomeView()
			.tag(1)
			.tabItem {
				Image(systemName: "figure.cooldown")
			}
			
		
		ContentView()
			.tag(2)
			.tabItem {
				Image(systemName: "person.fill")
			}
			
	}
}
