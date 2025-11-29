//
//  OnboardingView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 18/10/25.
//

import SwiftUI

struct OnboardingView: View {
	
	@State var currentViewID = 0
	@State var nextScreenButtonIsPresented: Bool = true
	
	var body: some View {
		ZStack {
			
			TabView(selection: $currentViewID) {
				OnboardingFirstView()
					.tag(0)
				
				OnboardingSecondView()
					.tag(1)
				
				RegisterView()
					.tag(2)
				
			}
			.highPriorityGesture (
				DragGesture()
			)
			.ignoresSafeArea()
			.tabViewStyle(.page)
			
			VStack {
				
				Spacer()
				
				// TODO: Colocar variáveis na VM
					VStack(spacing: 20) {
						if nextScreenButtonIsPresented {
							Button {
								withAnimation(.easeInOut(duration: 2)) {
									if currentViewID != 2 {
										currentViewID += 1
									}
								}
								if currentViewID == 2 {
									nextScreenButtonIsPresented = false
								}
							} label: {
								Text("Próxima tela")
									.padding(10)
									.foregroundStyle(.black)
							}
							.font(.largeTitle)
							.bold()
							.buttonStyle(.glassProminent)
						}
						
						if currentViewID > 0 {
							Button {
								withAnimation(.easeInOut(duration: 2)) {
									if currentViewID > 0 {
										currentViewID -= 1
									}
								}
							} label: {
								Text("Voltar")
									.foregroundStyle(.black)
									.bold()
							}
							.buttonStyle(.glassProminent)

						}
					}
					.padding(.bottom, 100)
				
			}
			
			
			
		}
	}
}

#Preview {
	OnboardingView()
}
