//
//  Padding.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 06/12/25.
//

import Foundation
import SwiftUI

extension View {
	func standardPadding() -> some View { self.padding(16) }
	func standardHPadding() -> some View { self.padding(.horizontal, 16) }
	func standardVPadding() -> some View { self.padding(.vertical, 16) }
	
	func largePadding() -> some View { self.padding(24) }
}
