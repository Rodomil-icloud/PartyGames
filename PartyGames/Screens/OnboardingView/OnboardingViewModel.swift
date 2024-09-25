//
//  OnboardingViewModel.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

final class OnboardingViewModel: ObservableObject {

	// MARK: - Published Properties

	@Published var screenData: [OnboardingModel] = OnboardingModel.screenData
	@Published var currentScreen: Int = 0
	@Published var next = false

	// MARK: - Private Properties

	@Published var showRate = false

	// MARK: - Public Methods

	func nextScreen() {
		if (currentScreen + 1) < screenData.count {
			currentScreen += 1
		} else {
			if showRate { next = true } else { showRate.toggle() }
		}
	}
}
