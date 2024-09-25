//
//  PurshesModel.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import Foundation

struct PurshaseModel: Identifiable {
	let id = UUID()
	let tag: Int
	let date: String
	let price: String
	let priceInWeak: String
	var isSelected: Bool

	static let purshaseData = [PurshaseModel(tag: 1,
											 date: "1 week",
											 price: "$4.99",
											 priceInWeak: "$0.5/week",
											 isSelected: false),
							   PurshaseModel(tag: 2,
											 date: "1 month",
											 price: "$19.99",
											 priceInWeak: "$0.5/week",
											 isSelected: true),
							   PurshaseModel(tag: 3,
											 date: "1 year",
											 price: "$199.99",
											 priceInWeak: "$0.5/week",
											 isSelected: false)]
}
