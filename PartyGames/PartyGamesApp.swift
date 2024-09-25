//
//  PartyGamesApp.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

@main
struct PartyGamesApp: App {
    var body: some Scene {
        WindowGroup {
//			LoadViewView()
			StoreViewConfigurator().config()
        }
    }
}
