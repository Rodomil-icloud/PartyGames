//
//  gameCellView.swift
//  PartyGames
//
//  Created by Rodomil on 25.09.2024.
//

import SwiftUI

struct GameCellView: View {

	// MARK: - Published Properties

	var gameCell: GameModel
	var selected: (UUID) -> Void

	// MARK: - Body

    var body: some View {
		ZStack {
			Image(gameCell.image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.ignoresSafeArea()
				.frame(width: UIScreen.main.bounds.width / 3.5)
				.vBottom()
				.hTrailing()
			Image(gameCell.isSelected ? ImageResource.gamesCardFonSelected : ImageResource.gamesCardFon)
				.resizable()
				.ignoresSafeArea()
			Text(gameCell.name)
				.font(.title1)
				.foregroundStyle(gameCell.color)
				.hLeading()
				.vTop()
				.padding([.leading, .top], 16)
		}
		.cornerRadius(18)
		.onTapGesture {
			selected(gameCell.id)
		}
    }
}

#Preview {
	GameCellView(gameCell: GameModel.dataGame[2], selected: { _ in })
}
