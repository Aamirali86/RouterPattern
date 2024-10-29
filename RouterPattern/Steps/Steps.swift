//
//  Steps.swift
//  CoordinatorPattern
//
//  Created by Aamir on 20/09/2024.
//

import Foundation

protocol Steps: Equatable, Hashable {}

enum RouterSteps: Steps {
    case home
    case detail
    case addToCart
    case profile
    case walletDetail
    case selectPaymentMethod
    case buyItem
    case summary
}

extension RouterSteps: Identifiable {
    var id: String {
        switch self {
        case .home:
            "home"
        case .detail:
            "itemDetails"
        case .addToCart:
            "addToCart"
        case .profile:
            "profile"
        case .walletDetail:
            "walletDetail"
        case .selectPaymentMethod:
            "selectPaymentMethod"
        case .buyItem:
            "buyItem"
        case .summary:
            "summary"
        }
    }
}
