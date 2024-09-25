//
//  CtoreViewConfigurator.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

final class StoreViewConfigurator {

	// MARK: - Internal methods

	func config() -> StoreView {
		let model = StoreViewModel()
		let view = StoreView(model: model)
		return view
	}
}
