//
//  OnboardingFirstView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 18/10/25.
//

import SwiftUI

struct OnboardingFirstView: View {
	
	
	var body: some View {
		ZStack {
			
			Color("backgroundColor")
			
			CirclesView(size: 250, lineWidth: 10, spacing: 10)
			
			VStack {
				
				Text("Olá do MacroMax!")
					.font(.system(size: 35))
				
				Image(systemName: "figure.cooldown.circle.fill")
					.font(.system(size: 200))
				
			}
			.foregroundStyle(Color.accent)
		}
		.ignoresSafeArea()
	}
}

#Preview {
	OnboardingFirstView()
}
