//
//  StoreViewModel.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

final class StoreViewModel: ObservableObject {

	// MARK: - Published Properties

	@Published var onePurshase: Bool = true
	@Published var purshaseSelected = 2
	@Published var purshaseData = PurshaseModel.purshaseData
	@Published var next = false

	// MARK: - Public Methods

	func purshaseSelect(_ tag: Int) {
		purshaseSelected = tag
		for (index, _) in purshaseData.enumerated() {
			purshaseData[index].isSelected = false
		}
		purshaseData[tag - 1].isSelected.toggle()
	}

}
