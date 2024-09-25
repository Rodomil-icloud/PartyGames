//
//  OnboardingModel.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import Foundation

struct OnboardingModel {
	let type: String
	let page: String
	let image: String
	let title: String
	let desc: String

	static let screenData: [OnboardingModel] = [OnboardingModel(type: "Welcome to",
																page: "pageIndicator1",
																image: "onboarding1",
																title: "The party game",
																desc: "Choose games for total fun at the party"),
												OnboardingModel(type: "Lots of",
																page: "pageIndicator2",
																image: "onboarding2",
																title: "Interesting cards",
																desc: "Games fall out in random order"),
												OnboardingModel(type: "Choose",
																page: "pageIndicator3",
																image: "onboarding3",
																title: "Themed card sets",
																desc: "Choose one set you like or mix several"),
												OnboardingModel(type: "Various",
																page: "pageIndicator4",
																image: "onboarding4",
																title: "Game parameters",
																desc: "Set a timer or points to win, choose to play randomly or take turns"),
												OnboardingModel(type: "Please",
																page: "pageIndicator5",
																image: "onboarding5",
																title: "Rate our app",
																desc: "Leave feedback in the AppStore, it will help make our app even better")]
}
