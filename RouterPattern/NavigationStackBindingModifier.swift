//
//  NavigationStackBindingModifier.swift
//  RouterPattern
//
//  Created by Aamir on 28/10/2024.
//

import Combine
import SwiftUI

struct NavigationStackBindingModifier: ViewModifier {
    @Binding var navigationStack: [RouterSteps]

    func body(content: Content) -> some View {
        content.environment(\.navigationStack, $navigationStack)
    }
}

extension View {
    func navigationStackBinding(_ navigationStack: Binding<[RouterSteps]>) -> some View {
        modifier(NavigationStackBindingModifier(navigationStack: navigationStack))
    }
}
