//
//  HomeViewModel.swift
//  RouterPattern
//
//  Created by Aamir on 28/10/2024.
//

import Combine

final class HomeViewModel: ObservableObject {
    unowned var router: Router

    init(router: Router) {
        self.router = router
    }
}
