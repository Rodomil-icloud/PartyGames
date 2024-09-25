//
//  LoadViewView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

struct LoadViewView: View {
	
	// MARK: - Private Properties

	@State private var progress: Float = 0
	@State var next = false
	private let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

	// MARK: - Body

    var body: some View {
		NavigationStack {
			ZStack {
				Image(ImageResource.loadScreenBackground)
					.resizable()
					.ignoresSafeArea()
				Image(ImageResource.loadLogo)
					.resizable()
					.frame(width: 200, height: 200)
					.vTop()
					.padding(.top, 217)
				ProgressView(value: progress)
					.tint(.progressTint)
					.background(Color.progressBackground)
					.vBottom()
					.padding(.bottom, 86)
					.frame(width: 180)
					.onReceive(timer) { _ in
						if progress < 0.9 {
							progress += 0.01
						} else {
							next = true
						}
					}
			}
			.navigationDestination(isPresented: $next) {
				OnboardingViewConfigurator().config()
			}
		}
    }
}

#Preview {
    LoadViewView()
}
