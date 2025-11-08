//
//  OnboardingSecondView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 18/10/25.
//

import SwiftUI

struct OnboardingSecondView: View {
	
//	@State var time: TimeInterval = 0.0
	
	var body: some View {
		ZStack {
			Color("backgroundColor")
			
			CirclesView(size: 150, lineWidth: 10, spacing: 40)
				.foregroundStyle(Color.accent)
				.offset(x: -UIScreen.main.bounds.width / 2, y: -UIScreen.main.bounds.height / 3)
			
			
			CirclesView(size: 150, lineWidth: 10, spacing: 40)
				.foregroundStyle(Color.accent)
				.offset(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
			
			
			TimelineView(.animation) { timeline in
				
				let t = timeline.date.timeIntervalSinceReferenceDate
				let xoffset = sin(t * 2) * 2
				let yoffset = cos(t * 2) * 2
				
				VStack(spacing: 40) {
					FeatureBubble(text: "Acompanhe seus Treinos!")
						.offset(x: xoffset, y: yoffset)
					
					FeatureBubble(text: "Defina metas!", isPrincipal: true)
						.offset(x: -xoffset, y: yoffset)
					
					FeatureBubble(text: "Controle sua alimentação!")
						.offset(x: xoffset, y: yoffset * 0.2)
					
					FeatureBubble(text: "Crie sua rotina ideal!")
						.offset(x: xoffset / 2, y: -yoffset)
				}
				
			}
			
		}
		.ignoresSafeArea()
	}
}

#Preview {
	OnboardingSecondView()
}
