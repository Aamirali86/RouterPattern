//
//  DetailView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 20/09/2024.
//

import SwiftUI

final class DetailViewModel: Identifiable {
    let id = UUID()
    let detailText: String
    unowned var router: Router
    
    init(router: Router, detailText: String) {
        self.router = router
        self.detailText = detailText
    }
}

struct DetailView: View {
    @Environment(\.dismiss)
    private var dismiss
    let viewModel: DetailViewModel
    @State private var step: RouterSteps?
    
    var body: some View {
        VStack {
            Text(viewModel.detailText)
                .font(.largeTitle)
            Button("Add to cart") {
                step = .addToCart
            }
        }
        .fullScreenCover(item: $step) { step in
            viewModel.router.redirect(step)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("<Back") {
                    dismiss()
                }
            }
        }
    }
}
