//
//  GameModel.swift
//  PartyGames
//
//  Created by Rodomil on 25.09.2024.
//

import SwiftUI

struct GameModel: Identifiable {
	let id: UUID = UUID()
	let name: String
	let image: String
	let color: Color
	var isSelected: Bool

	static let dataGame: [GameModel] = [
		.init(name: "Truth or dare", image: "truthOrDareImg", color: .gtBlue, isSelected: true),
		.init(name: "5 seconds", image: "fSecondsImg", color: .gtGreen, isSelected: false),
		.init(name: "Never have i ever", image: "neverHaveIEverImg", color: .gtYellow, isSelected: false),
		.init(name: "Most likely to", image: "mostLikelyToImg", color: .gtRed, isSelected: false)]
}
