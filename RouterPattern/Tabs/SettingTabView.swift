//
//  SettingTabView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 20/09/2024.
//

import SwiftUI

final class SettingTabViewModel: ObservableObject {
    unowned var router: Router

    init(router: Router) {
        self.router = router
    }
}

struct SettingTabView: View {
    @State private var navigationStack: [RouterSteps] = []
    @ObservedObject var viewModel: SettingTabViewModel
    
    var body: some View {
        VStack {
            Text("Settings Tab")
            Button("Go to profile") {
                navigationStack.append(.profile)
            }
        }
        .applyNavigation($navigationStack, router: viewModel.router)
    }
}
