//
//  HomeView.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 11/10/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
		 ZStack {
			 Color.black
				 .ignoresSafeArea()
			 
			 Text("Hello, World!")
				 .font(.system(size: 100))
				 .foregroundStyle(.accent)
		 }
    }
}

#Preview {
    HomeView()
}
