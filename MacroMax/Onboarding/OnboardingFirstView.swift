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
			
			CirclesView(size: 150, lineWidth: 10, spacing: 40)
				.foregroundStyle(Color.accent)
				.offset(x: UIScreen.main.bounds.width / 2, y: -UIScreen.main.bounds.height / 3)
			
			CirclesView(size: 250, lineWidth: 10, spacing: 10)
				.foregroundStyle(.accent.opacity(0.1))
			
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
