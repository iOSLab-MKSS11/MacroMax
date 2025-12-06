//
//  Typography.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 06/12/25.
//

import Foundation
import SwiftUI

extension Design {
	
	/// A namespace for the app’s typographic scale.
	/// 
	/// Use these static `SwiftUI.Font` constants to ensure consistent typography across the app.
	/// Each size maps to a semantic role, mirroring Apple’s text styles while giving you explicit control
	/// over point sizes and weights. Prefer these over ad‑hoc `.font(...)` usages to maintain visual consistency.
	///
	/// - Note: All fonts use the system default design. Adjust weights and sizes here to propagate changes app‑wide.
	///
	/// - SeeAlso: `SwiftUI.Font`
	///
	///
	/// - `huge`: A very large, bold display style intended for hero headings or prominent numbers.
	///   - Size: 44pt, Weight: bold
	///
	/// - `display`: A large, bold display style for primary section headers or standout content.
	///   - Size: 34pt, Weight: bold
	///
	/// - `largeTitle`: A bold title style suitable for major headings within a screen.
	///   - Size: 28pt, Weight: bold
	///
	/// - `title`: A semibold title style for section headers and important labels.
	///   - Size: 22pt, Weight: semibold
	///
	/// - `headline`: A semibold text style for emphasized body text or key labels.
	///   - Size: 17pt, Weight: semibold
	///
	/// - `body`: The default body text style for general reading.
	///   - Size: 17pt, Weight: regular
	///
	/// - `callout`: A slightly smaller body style for supportive text that still requires emphasis.
	///   - Size: 16pt, Weight: regular
	///
	/// - `subheadline`: A compact, secondary text style for captions under titles or metadata.
	///   - Size: 15pt, Weight: regular
	///
	/// - `footnote`: A small text style for annotations and less prominent details.
	///   - Size: 13pt, Weight: regular
	///
	/// - `caption`: The smallest text style for auxiliary information and labels with limited space.
	///   - Size: 12pt, Weight: regular
	enum Typography {
		public static let huge: SwiftUI.Font = .system(size: 44, weight: .bold, design: .default)
		public static let display: SwiftUI.Font = .system(size: 34, weight: .bold, design: .default)
		public static let largeTitle: SwiftUI.Font = .system(size: 28, weight: .bold, design: .default)
		public static let title: SwiftUI.Font = .system(size: 22, weight: .semibold, design: .default)
		public static let headline: SwiftUI.Font = .system(size: 17, weight: .semibold, design: .default)
		public static let body: SwiftUI.Font = .system(size: 17, weight: .regular, design: .default)
		public static let callout: SwiftUI.Font = .system(size: 16, weight: .regular, design: .default)
		public static let subheadline: SwiftUI.Font = .system(size: 15, weight: .regular, design: .default)
		public static let footnote: SwiftUI.Font = .system(size: 13, weight: .regular, design: .default)
		public static let caption: SwiftUI.Font = .system(size: 12, weight: .regular, design: .default)
	}
}
