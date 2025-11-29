//
//  RegisterView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 29/11/25.
//

import SwiftUI

struct RegisterView: View {
	
	@Environment(\.dismiss) var dismiss
	
	@StateObject var viewModel = RegisterViewModel()
	
	@State var senha: String = ""
	
	var body: some View {
		ZStack {
			
			Color("backgroundColor")
				.ignoresSafeArea()
			
			CirclesView(size: 40, lineWidth: 10, spacing: 40)
				.offset(x: -20, y: -20)
				.foregroundStyle(.accent)
			
			CirclesView(size: 100, lineWidth: 20, spacing: 50)
				.offset(x: UIScreen.main.bounds.width / 3, y: 100)
				.foregroundStyle(.accent)
			
			VStack {
				Text("Informe seu nome")
					.font(.largeTitle)
					.foregroundStyle(.accent)
				
				TextField("Digite o seu nome", text: $viewModel.name)
					.textFieldStyle(.roundedBorder)
				
//				SecureField("Senha", text: $senha)
				
				Button {
					viewModel.saveProfile()
					dismiss()
				} label: {
					Text("Salvar")
				}
				.buttonStyle(.glassProminent)
				
			}
			.padding()
		}
	}
}


#Preview {
	RegisterView()
}
