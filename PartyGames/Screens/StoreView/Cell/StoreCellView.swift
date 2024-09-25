//
//  StoreCellViewView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

struct StoreCellView: View {

	// MARK: - Properties

	let index: Int
	let date: String
	let price: String
	let priceInWeak: String
	var action: (Int) -> Void

	var isSelected: Bool = false

	// MARK: - Body

    var body: some View {
		ZStack {
			Image(isSelected ? ImageResource.paywallSelect : ImageResource.paywall)
				.resizable()
			VStack(alignment: .center, spacing: 8) {
				Text(date)
					.font(.button2)
					.foregroundStyle(.textGray2)
				Text(price)
					.font(.title1)
					.foregroundStyle(.white)
				Text(priceInWeak)
					.font(.button2)
					.foregroundStyle(.textBlue)
			}
		}
		.onTapGesture {
			action(self.index)
		}
    }
}

#Preview {
	StoreCellView(index: 1, date: "", price: "", priceInWeak: "", action: { _ in })
}
