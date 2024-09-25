//
//  LoadViewView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

extension Font {
	static let title1 = Font.Montserrat(.bold, size: 26)
	static let titleBig = Font.Montserrat(.bold, size: 40)
	static let desc = Font.Montserrat(.bold, size: 17)
	static let button = Font.Montserrat(.bold, size: 17)
	static let button2 = Font.Montserrat(.medium, size: 12)
	static let typePage = Font.Montserrat(.bold, size: 15)
}

extension Font {
	static func Montserrat(_ name: MontserratFontStyle = .regular, size: Double) -> Font {
		guard let customFont = UIFont(name: name.rawValue, size: CGFloat(size)) else {
			assertionFailure("Failed to load the \(name) font. Make sure the font file is included in the project and the font name is correct.")
			return Font(.init(.message, size: 9))
		}
		return Font.custom(customFont.fontName, size: CGFloat(size))
	}
}

public enum MontserratFontStyle: String {
	case regular = "Montserrat Regular"
	case bold = "Montserrat Bold"
	case medium = "Montserrat Medium"
}
