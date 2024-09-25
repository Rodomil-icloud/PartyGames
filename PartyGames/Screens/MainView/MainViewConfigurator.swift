//
//  MainViewConfigurator.swift
//  PartyGames
//
//  Created by Rodomil on 25.09.2024.
//

import SwiftUI

final class MainViewConfigurator {

	// MARK: - Internal methods

	func config() -> MainView {
		let model = MainViewModel()
		let view = MainView(model: model)
		return view
	}
}
