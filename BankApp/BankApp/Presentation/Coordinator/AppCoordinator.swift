//
//  AppCoordinator.swift
//  BankApp
//
//  Created by AOZ on 19/06/2026.
//
import SwiftUI

/// Owns navigation state and centralizes navigation logic (the "C" in MVVM-C).
@Observable
final class AppCoordinator {
    var path: [Route] = []

    func push(_ route: Route) { path.append(route) }
    func pop() { guard !path.isEmpty else { return }; path.removeLast() }
    func popToRoot() { path.removeAll() }
}


/// Wires the navigation stack to the coordinator and resolves routes.
struct RootView: View {
    @Bindable var coordinator: AppCoordinator

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeView(coordinator: coordinator)
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .detail(let id):
                        DetailView(id: id)
                    }
                }
        }
    }
}
