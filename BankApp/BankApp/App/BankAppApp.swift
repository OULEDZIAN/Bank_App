//
//  BankAppApp.swift
//  BankApp
//
//  Created by AOZ on 17/06/2026.
//

import SwiftUI

@main
struct BankAppApp: App {
    @State private var coordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            RootView(coordinator: coordinator)
        }
    }
}
