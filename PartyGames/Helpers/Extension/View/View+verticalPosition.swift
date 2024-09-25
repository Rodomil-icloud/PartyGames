//
//  LoadViewView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

extension View {
	func vTop() -> some View {
		self
			.frame(maxHeight: .infinity, alignment: .top)
	}

	func vBottom() -> some View {
		self
			.frame(maxHeight: .infinity, alignment: .bottom)
	}

	func vCenter() -> some View {
		self
			.frame(maxHeight: .infinity, alignment: .center)
	}
}
