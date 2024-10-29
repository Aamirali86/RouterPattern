//
//  AddToCartView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 22/09/2024.
//

import Combine
import SwiftUI

final class AddToCartViewModel: Identifiable {
    let id = UUID()
    let detailText: String
    unowned var router: Router

    init(router: Router, detailText: String) {
        self.router = router
        self.detailText = detailText
    }
}

struct AddToCartView: View {
    @State private var navigationStack: [RouterSteps] = []
    @Environment(\.dismiss)
    private var dismiss
    let viewModel: AddToCartViewModel

    var body: some View {
        VStack {
            Text(viewModel.detailText)
            Button("Select payment Method") {
                navigationStack.append(.selectPaymentMethod)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Close") {
                    dismiss()
                }
            }
        }
        .applyNavigation($navigationStack, router: viewModel.router)
        .navigationStackBinding($navigationStack)
    }
}

#Preview {
    AddToCartView(viewModel: AddToCartViewModel(router: Router(), detailText: "Add to cart"))
}
