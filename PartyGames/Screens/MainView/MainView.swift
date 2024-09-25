//
//  MainViewConfigurator.swift
//  PartyGames
//
//  Created by Rodomil on 25.09.2024.
//

import SwiftUI

struct MainView: View {

	// MARK: - Property wrappers

	@ObservedObject var model: MainViewModel

	// MARK: - Body
	
    var body: some View {
		ZStack {
			Image(ImageResource.loadScreenBackground)
				.resizable()
				.ignoresSafeArea()
			VStack {
				menuView()
				Text("main_title")
					.font(.title1)
					.foregroundStyle(.white)
				gameView()
				Spacer()
				buttonView()
			}
			.padding(.horizontal, 16)
			.vTop()
		}
    }

	// MARK: - ViewBuilder

	@ViewBuilder
	private func menuView() -> some View {
		HStack {
			Image(ImageResource.favorite)
				.resizable()
				.frame(width: 40, height: 40)
			Spacer()
			Image(ImageResource.menu)
				.resizable()
				.frame(width: 40, height: 40)
		}
	}

	@ViewBuilder
	private func gameView() -> some View {
		LazyVGrid(columns: [GridItem(.fixed(model.widthCell), spacing: 8), GridItem(.fixed(model.widthCell))]) {
			ForEach(model.game) { item in
				GameCellView(gameCell: item) { id in
					model.selectGame(id: id)
				}
			}
		}
		.padding(.top, 56)
	}

	@ViewBuilder
	private func buttonView() -> some View {
		VStack(spacing: 8) {
			NLButton("button_random", buttonType: .random) {

			}
			NLButton("button_play") {

			}
		}
	}
}

#Preview {
	MainView(model: MainViewModel())
}
