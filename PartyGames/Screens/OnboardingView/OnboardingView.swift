//
//  OnboardingView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI
import StoreKit

struct OnboardingView: View {

	// MARK: - Property wrappers

	@ObservedObject var model: OnboardingViewModel
	@Environment(\.requestReview) var requestReview

	// MARK: - Body

    var body: some View {
		VStack {
			Image(model.screenData[model.currentScreen].image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.ignoresSafeArea()
			titleView()
			Spacer()
			buttonView()
		}
		.onChange(of: model.showRate, { _, _ in
			requestReview()
		})
		.vTop()
		.background(Color.black)
		.navigationBarBackButtonHidden()
		.navigationDestination(isPresented: $model.next) {
			StoreViewConfigurator().config()
		}
    }

	// MARK: - ViewBuilder

	@ViewBuilder
	private func titleView() -> some View {
		VStack {
			Text(model.screenData[model.currentScreen].type)
				.font(.typePage)
				.foregroundStyle(.textPink)
				.padding(.horizontal, 12)
				.padding(.vertical, 8)
				.background(.background2)
				.cornerRadius(100)
			Text(model.screenData[model.currentScreen].title)
				.font(.title1)
				.foregroundStyle(.white)
				.multilineTextAlignment(.center)
				.padding(.top, 8)
			Text(model.screenData[model.currentScreen].desc)
				.font(.desc)
				.foregroundStyle(.textGray)
				.multilineTextAlignment(.center)
				.padding(.top, 1)

		}
		.padding(.top, -35)
		.padding(.horizontal, 16)
	}

	@ViewBuilder
	private func buttonView() -> some View {
		Image(model.screenData[model.currentScreen].page)
			.resizable()
			.frame(width: 72, height: 8)
		NLButton("button_next") {
			model.nextScreen()
		}
		.padding(.top, 12)
		.padding(.bottom, NLButton.bottom)
		.padding(.horizontal, 16)
	}
}

#Preview {
	OnboardingView(model: OnboardingViewModel())
}
