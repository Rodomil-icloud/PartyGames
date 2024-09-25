//
//  LoadViewView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

extension View {
	func hLeading() -> some View {
		self
			.frame(maxWidth: .infinity, alignment: .leading)
	}

	func hTrailing() -> some View {
		self
			.frame(maxWidth: .infinity, alignment: .trailing)
	}

	func hCenter() -> some View {
		self
			.frame(maxWidth: .infinity, alignment: .center)
	}
}
