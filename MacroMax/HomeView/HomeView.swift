//
//  HomeView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 11/10/25.
//

import SwiftUI

struct HomeView: View {
	var body: some View {
		NavigationStack {
			
			ZStack {
				
				ScrollView {
					registerNewWorkoutLink
						.padding(.top, 100)
				}
				.background(
					Design.Colors.background
						.ignoresSafeArea()
				)
				
				VStack {
					header
						.foregroundStyle(Design.Colors.primaryText)
					Spacer()
				}
				
			}
		}
		
		
	}
}

#Preview {
	HomeView()
}

extension HomeView {
	
	private var registerNewWorkoutLink: some View {
		HStack {
			Spacer()
			NavigationLink {
				
			} label: {
				Text("Registrar novo treino")
					.font(Design.Typography.largeTitle)
					.largePadding()
					.background(
						RoundedRectangle(cornerRadius: Design.Radius.pill)
							.fill(
								Design.Colors.secondaryBackground
							)
							.shadow(radius: 2)
					)
				
			}
			Spacer()
		}
	}
	
	private var header: some View {
		HStack {
			VStack(alignment: .leading) {
				Text("Olá, usuário")
					.font(Design.Typography.title)
				Text("Vamos começar o seu dia")
					.font(Design.Typography.subheadline)
			}
			
			Spacer()
			
			Button {
				//
			} label: {
				Image(systemName: "trophy")
					.font(Design.Typography.title)
					.foregroundStyle(.accent)
			}
		}
		.largePadding()
		.padding(.top, 50)
		.background(
			RoundedRectangle(cornerRadius: Design.Radius.medium)
				.fill(
					Design.Colors.secondaryBackground
				)
		)
		.ignoresSafeArea()
	}
	
}
