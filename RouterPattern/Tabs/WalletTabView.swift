//
//  WalletTabView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 20/09/2024.
//

import SwiftUI

final class WalletTabViewModel: ObservableObject {
    unowned var router: Router

    init(router: Router) {
        self.router = router
    }
}

struct WalletTabView: View {
    @State private var navigationStack: [RouterSteps] = []
    @ObservedObject var viewModel: WalletTabViewModel
    
    var body: some View {
        VStack {
            Text("Wallet Tab")
            Button("Go to wallet detail") {
                navigationStack.append(.walletDetail)
            }
        }
        .applyNavigation($navigationStack, router: viewModel.router)
    }
}
