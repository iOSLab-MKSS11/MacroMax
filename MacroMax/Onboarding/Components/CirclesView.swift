//
//  CirclesView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 18/10/25.
//

import SwiftUI

struct CirclesView: View {
	
	let size: CGFloat
	let lineWidth: CGFloat
	let spacing: CGFloat
	
	var body: some View {
		ZStack {
			Circle()
				.stroke(lineWidth: lineWidth)
				.frame(width: size)
			
			Circle()
				.stroke(lineWidth: lineWidth)
				.frame(width: size - spacing)
			
			Circle()
				.stroke(lineWidth: lineWidth)
				.frame(width: size - (2 * spacing))
		}
	}
}

#Preview {
	CirclesView(size: 150, lineWidth: 20, spacing: 50)
}
