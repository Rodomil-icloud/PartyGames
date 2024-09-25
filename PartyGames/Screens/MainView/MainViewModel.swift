//
//  MainViewModel.swift
//  PartyGames
//
//  Created by Rodomil on 25.09.2024.
//

import SwiftUI

final class MainViewModel: ObservableObject {

	// MARK: - Properties

	let widthCell = UIScreen.main.bounds.width / 2 - 20

	// MARK: - Published Properties

	@Published var next = false
	@Published var game = GameModel.dataGame

	// MARK: - Public Methods

	func selectGame(id: UUID) {
		for (index, item) in game.enumerated() where item.id == id {
			game[index].isSelected.toggle()
		}
	}
}
