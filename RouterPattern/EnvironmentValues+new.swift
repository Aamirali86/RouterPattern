//
//  EnvironmentValues+new.swift
//  RouterPattern
//
//  Created by Aamir on 28/10/2024.
//

import SwiftUI

private struct BindingValueKey: EnvironmentKey {
    static let defaultValue: Binding<[RouterSteps]> = .constant([])
}

extension EnvironmentValues {
    var navigationStack: Binding<[RouterSteps]> {
        get { self[BindingValueKey.self] }
        set { self[BindingValueKey.self] = newValue }
    }
}
