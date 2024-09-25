//
//  LoadViewView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

struct NLButton: View {

	enum ButtonType {
		case base
		case random
	}

	static let bottom: CGFloat = 30

	// MARK: - Constants

	private let height: CGFloat = 56

	// MARK: - Properties

	let text: LocalizedStringKey
	let text2: LocalizedStringKey?
	let buttonType: ButtonType
	let action: (() -> Void)?

	// MARK: - Private Properties

	@Environment(\.isEnabled) private var isEnabled

	// MARK: - Init

	init(
		_ text: LocalizedStringKey,
		text2: LocalizedStringKey? = nil,
		buttonType: ButtonType = ButtonType.base,
		action: (() -> Void)? = nil
	) {
		self.text = text
		self.text2 = text2
		self.action = action
		self.buttonType = buttonType
	}

	var body: some View {
		Button {
			action?()
		} label: {
			if let text2 = text2 {
				VStack {
					Text(text)
						.font(.button)
						.foregroundStyle(.white)
						.multilineTextAlignment(.center)
					Text(text2)
						.font(.button2)
						.foregroundStyle(.white)
						.multilineTextAlignment(.center)
				}
					.frame(maxWidth: .infinity, alignment: .center)
					.frame(height: height)
					.background(Image(ImageResource.btn))
					.cornerRadius(100)
			} else {
				Text(text)
					.font(.button)
					.foregroundStyle(getTextColor())
					.multilineTextAlignment(.center)
					.frame(maxWidth: .infinity, alignment: .center)
					.frame(height: height)
					.background(getBackgroundColor())
					.cornerRadius(100)
			}
		}
		.disabled(!isEnabled)
	}

	// MARK: - Private Methods

	func getTextColor() -> Color {
		switch buttonType {
		case .base: return .white
		case .random: return .textPink
		}
	}

	func getBackgroundColor() -> Image {
		switch buttonType {
		case .base: return Image(ImageResource.btn)
		case .random: return Image(ImageResource.btnRandom)
		}
	}
}


// MARK: - Preview

#Preview {
	VStack {
		NLButton("button_next")
		
		NLButton("button_next", text2: "button_next")

		NLButton("button_next", buttonType: .random)
			.disabled(true)
//
//		NLButton("button_next")
//			.disabled(false)

	}
}
