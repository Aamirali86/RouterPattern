//
//  PaymentMethodView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 22/09/2024.
//

import SwiftUI

final class PaymentMethodViewModel: Identifiable {
    let id = UUID()
    let detailText: String

    init(detailText: String) {
        self.detailText = detailText
    }
}

struct PaymentMethodView: View {
    @Environment(\.navigationStack)
    var navigationStack: Binding<[RouterSteps]>
    let viewModel: PaymentMethodViewModel

    var body: some View {
        VStack {
            Text(viewModel.detailText)
            Button("Buy Item") {
                navigationStack.wrappedValue.append(.buyItem)
            }
        }
    }
}

#Preview {
    PaymentMethodView(viewModel: PaymentMethodViewModel(detailText: ""))
}
