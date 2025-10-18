//
//  OnboardingView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 18/10/25.
//

import SwiftUI

struct OnboardingView: View {
	
	@State var currentViewID = 0
	
	var body: some View {
		ZStack {
			
			OnboardingFirstView()
				.offset(x: currentViewID == 0 ? 0 : -UIScreen.main.bounds.width)
			
			OnboardingSecondView()
				.offset(x: currentViewID == 1 ? 0 : currentViewID == 2 ? -UIScreen.main.bounds.width : UIScreen.main.bounds.width)
			
			Color.green
				.offset(x: currentViewID == 2 ? 0 : UIScreen.main.bounds.width)
			
			VStack {
				
				Spacer()
				
				Button {
					withAnimation(.easeInOut(duration: 2)) {
						if currentViewID != 2 {
							currentViewID += 1
						}
					}
				} label: {
					Text("Próxima tela")
				}
				.font(.largeTitle)
				.bold()
				.buttonStyle(.borderedProminent)
				.padding(.bottom, 100)
			}
			
			
			
		}
		.ignoresSafeArea()
	}
}

#Preview {
	OnboardingView()
}
