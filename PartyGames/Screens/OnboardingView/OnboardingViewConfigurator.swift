//
//  OnboardingViewConfigurator.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

final class OnboardingViewConfigurator {

	// MARK: - Internal methods

	func config() -> OnboardingView {
		let model = OnboardingViewModel()
		let view = OnboardingView(model: model)
		return view
	}
}
