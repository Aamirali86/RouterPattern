//
//  HomeView.swift
//  CoordinatorPattern
//
//  Created by Aamir on 20/09/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        TabView {
            ItemsTabView(viewModel: ItemsTabViewModel(router: viewModel.router))
                .tabItem {
                    Label("Tab 1", systemImage: "1.circle")
                }
            
            WalletTabView(viewModel: WalletTabViewModel(router: viewModel.router))
                .tabItem {
                    Label("Tab 2", systemImage: "2.circle")
                }
            
            SettingTabView(viewModel: SettingTabViewModel(router: viewModel.router))
                .tabItem {
                    Label("Tab 3", systemImage: "3.circle")
                }
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel(router: Router()))
}
