//
//  TCASample2App.swift
//  TCASample2
//
//  Created by Masahito Mori on 2024/05/18.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCASample2App: App {
    static let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            ContactsView(store: TCASample2App.store)
        }
    }
}
