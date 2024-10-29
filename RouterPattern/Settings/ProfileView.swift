//
//  ProfileView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 22/09/2024.
//

import SwiftUI

final class ProfileViewModel: Identifiable {
    let id = UUID()
    let detailText: String
    
    init(detailText: String) {
        self.detailText = detailText
    }
}

struct ProfileView: View {
    @Environment(\.dismiss)
    private var dismiss
    let viewModel: ProfileViewModel
    
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
