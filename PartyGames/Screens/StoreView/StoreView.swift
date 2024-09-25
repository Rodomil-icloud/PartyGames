//
//  StoreView.swift
//  PartyGames
//
//  Created by Rodomil on 23.09.2024.
//

import SwiftUI

struct StoreView: View {

	// MARK: - Property wrappers

	@ObservedObject var model: StoreViewModel

	// MARK: - Body

    var body: some View {
		ZStack {
			Image(ImageResource.loadScreenBackground)
				.resizable()
				.ignoresSafeArea()
			Image(ImageResource.close)
				.resizable()
				.frame(width: 40, height: 40)
				.vTop()
				.hTrailing()
				.padding(.trailing, 16)
			VStack {
				Image(ImageResource.storeImageTitle)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.padding(.top, -20)
				titleView()
			}
			.vTop()

			termsView()
			.navigationBarBackButtonHidden()
			.navigationDestination(isPresented: $model.next) {
				MainViewConfigurator().config()
			}
		}
    }

	// MARK: - ViewBuilder

	@ViewBuilder
	private func titleView() -> some View {
		VStack {
			Text("3 days free")
				.font(.typePage)
				.foregroundStyle(.textPink)
				.padding(.horizontal, 12)
				.padding(.vertical, 8)
				.background(.background2)
				.cornerRadius(100)
				.padding(.top, -50)
			Text("store_title")
				.font(model.onePurshase ? .titleBig : .title1)
				.foregroundStyle(.white)
				.multilineTextAlignment(.center)
			descView()
			Spacer()
			if !model.onePurshase { cellsView() }
			tunesView()
			NLButton("store_button_big_text", text2: "store_button_desc") {

			}
			.padding(.bottom, NLButton.bottom)
		}
		.padding(.horizontal, 16)

	}

	@ViewBuilder
	private func descView() -> some View {
		VStack {
			HStack {
				Image(ImageResource.iconsax)
					.resizable()
					.frame(width: 24, height: 24)
				Text("store_desc1")
					.font(.desc)
					.foregroundStyle(model.onePurshase ? .white : .textWhite2)
					.multilineTextAlignment(.center)
			}
			.hLeading()
			HStack {
				Image(ImageResource.iconsax)
					.resizable()
					.frame(width: 24, height: 24)
				Text("store_desc2")
					.font(.desc)
					.foregroundStyle(model.onePurshase ? .white : .textWhite2)
					.multilineTextAlignment(.center)
			}
			.hLeading()
			HStack {
				Image(ImageResource.iconsax)
					.resizable()
					.frame(width: 24, height: 24)
				Text("store_desc3")
					.font(.desc)
					.foregroundStyle(model.onePurshase ? .white : .textWhite2)
					.multilineTextAlignment(.center)
			}
			.hLeading()
		}
		.padding(.leading, 50)
	}

	@ViewBuilder
	private func tunesView() -> some View {
		HStack {
			Image(ImageResource.lock)
				.resizable()
				.frame(width: 14, height: 14)
			Text("Secured with iTunes ・ Cancel anytime")
				.font(.button2)
				.foregroundStyle(.textWhite2)
		}
		.padding(.bottom, 10)
	}

	@ViewBuilder
	private func termsView() -> some View {
		HStack {
			Button {

			} label: {
				Text("terms_of_use")
					.font(.button2)
					.foregroundStyle(.textGray2)
			}
			Spacer()
			Button {
				
			} label: {
				Text("privacy_policy")
					.font(.button2)
					.foregroundStyle(.textGray2)
			}
		}
		.vBottom()
		.padding(.bottom, 1)
		.padding(.horizontal, 30)
	}

	@ViewBuilder
	private func cellsView() -> some View {
		HStack {
			ForEach(model.purshaseData) { item in
				StoreCellView(index: item.tag,
							  date: item.date,
							  price: item.price,
							  priceInWeak: item.priceInWeak,
							  action:  { index in model.purshaseSelect(index) },
							  isSelected: item.isSelected)
			}
		}
		.padding(.vertical, 8)
	}
}

#Preview {
	StoreView(model: StoreViewModel())
}
