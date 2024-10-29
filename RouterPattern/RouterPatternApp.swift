//
//  RouterPatternApp.swift
//  RouterPattern
//
//  Created by Aamir on 28/10/2024.
//

import SwiftUI

@main
struct RouterPatternApp: App {
    private let router = Router()

    var body: some Scene {
        WindowGroup {
            router.redirect(.home)
        }
    }
}
