//
//  Router.swift
//  RouterPattern
//
//  Created by Aamir on 28/10/2024.
//

import SwiftUI

final class Router: ObservableObject, Identifiable {
    
}

extension Router {
    // swiftlint:disable function_body_length
    @ViewBuilder
    func redirect(_ step: RouterSteps) -> some View {
        switch step {
        case .home:
            let viewModel = HomeViewModel(router: self)
            HomeView(viewModel: viewModel)
        case .detail:
            let viewModel = DetailViewModel(router: self, detailText: "Item details")
            DetailView(viewModel: viewModel)
                .navigationBarBackButtonHidden()
        case .walletDetail:
            let viewModel = WalletViewModel(detailText: "Wallet details")
            WalletView(viewModel: viewModel)
                .navigationBarBackButtonHidden()
        case .profile:
            let viewModel = ProfileViewModel(detailText: "Profile view")
            ProfileView(viewModel: viewModel)
                .navigationBarBackButtonHidden()
        case .selectPaymentMethod:
            let viewModel = PaymentMethodViewModel(detailText: "Select Payment Method")
            PaymentMethodView(viewModel: viewModel)
        case .buyItem:
            let viewModel = BuyItemViewModel(detailText: "Buy Item")
            BuyItemView(viewModel: viewModel)
        case .addToCart:
            let viewModel = AddToCartViewModel(router: self, detailText: "Add to cart")
            AddToCartView(viewModel: viewModel)
        case .summary:
            Text("Purchase summary")
        }
    }
}
