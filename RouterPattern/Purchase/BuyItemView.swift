//
//  BuyItemView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 22/09/2024.
//

import SwiftUI

final class BuyItemViewModel: Identifiable {
    let id = UUID()
    let detailText: String
    
    init(detailText: String) {
        self.detailText = detailText
    }
}

struct BuyItemView: View {
    @Environment(\.navigationStack)
    var navigationStack: Binding<[RouterSteps]>
    let viewModel: BuyItemViewModel

    var body: some View {
        Text(viewModel.detailText)
        Button("Go to summary") {
            navigationStack.wrappedValue.append(.summary)
        }
    }
}

#Preview {
    BuyItemView(viewModel: BuyItemViewModel(detailText: ""))
}
