//
//  Radius.swift
//  MacroMax
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 06/12/25.
//

import Foundation

extension Design {
	
	/// A namespace of standard corner radius values used throughout the design system.
	///
	/// Use these constants to ensure consistent rounded corner styling across views and controls.
	/// - Note: Values are expressed in points.
	/// - SeeAlso: `Design` for other design tokens such as spacing, typography, and colors.
	///
	/// - `small` (8pt): Subtle rounding for compact elements, small buttons, tags, or chips.
	/// - `medium` (12pt): Default rounding for most cards, buttons, and containers.
	/// - `large` (16pt): Prominent rounding for larger surfaces and featured components.
	/// - `pill` (999pt): A sufficiently large radius to create fully pill-shaped elements when applied
	///   to views whose height is less than or equal to this value.
	enum Radius {
		static let small: CGFloat = 8
		static let medium: CGFloat = 12
		static let large: CGFloat = 16
		static let pill: CGFloat = 999
	}
}
