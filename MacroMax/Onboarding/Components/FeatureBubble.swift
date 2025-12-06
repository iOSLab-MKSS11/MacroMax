//
//  FeatureBubble.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 08/11/25.
//

import SwiftUI

struct FeatureBubble: View {
	
	let text: String
	let isPrincipal: Bool
	
	init(text: String, isPrincipal: Bool = false) {
		self.text = text
		self.isPrincipal = isPrincipal
	}
	
	var body: some View {
		Text(text)
			.padding(isPrincipal ? 25 : 15)
			.background(
				RoundedRectangle(cornerRadius: 16)
					.fill(.ultraThinMaterial)
					.overlay(
						RoundedRectangle(cornerRadius: 16)
							.fill(.accent.opacity(0.75))
					)
			)
			.shadow(radius: 1)
			.font(isPrincipal ? .largeTitle : .headline)
	}
}

#Preview {
	FeatureBubble(text: "Acompanhe seus treinos")
		.padding(50)
		.background(.red)
}

