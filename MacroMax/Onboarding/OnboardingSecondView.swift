//
//  OnboardingSecondView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 18/10/25.
//

import SwiftUI

struct OnboardingSecondView: View {
	var body: some View {
		ZStack {
			Color("backgroundColor")
			
			CirclesView(size: 150, lineWidth: 10, spacing: 40)
				.foregroundStyle(Color.accent)
				.offset(x: -UIScreen.main.bounds.width / 2, y: -UIScreen.main.bounds.height / 3)
			
			
			CirclesView(size: 150, lineWidth: 10, spacing: 40)
				.foregroundStyle(Color.accent)
				.offset(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
			
			
			
			
			
			
			
			
		}
		.ignoresSafeArea()
	}
}

#Preview {
	OnboardingSecondView()
}
