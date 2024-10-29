//
//  WalletDetails.swift
//  CoordinatorPattern
//
//  Created by Aamir on 22/09/2024.
//

import SwiftUI

final class WalletViewModel: Identifiable {
    let id = UUID()
    let detailText: String
    
    init(detailText: String) {
        self.detailText = detailText
    }
}

struct WalletView: View {
    @Environment(\.dismiss)
    private var dismiss
    let viewModel: WalletViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.detailText)
                .font(.largeTitle)
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
