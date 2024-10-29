//
//  ItemsTabView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 20/09/2024.
//

import SwiftUI

final class ItemsTabViewModel: ObservableObject {
    unowned var router: Router

    init(router: Router) {
        self.router = router
    }
}

struct ItemsTabView: View {
    @State private var navigationStack: [RouterSteps] = []
    @ObservedObject var viewModel: ItemsTabViewModel

    var body: some View {
        VStack {
            Text("Items Tab")
            Button("Go to Item Detail") {
                navigationStack.append(.detail)
            }
        }
        .applyNavigation($navigationStack, router: viewModel.router)
    }
}
