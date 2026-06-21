//
//  HomeView.swift
//  BankApp
//
//  Created by AOZ on 19/06/2026.
//
import SwiftUI

/// Placeholder landing screen. Demonstrates coordinator-driven navigation.
struct HomeView: View {
    let coordinator: AppCoordinator

    var body: some View {
        ContentUnavailableView {
            Label("BankApp", systemImage: "building.columns")
        } description: {
            Text("Project skeleton ready.")
        } actions: {
            // Navigation demo — remove once real features drive navigation.
            Button("Open example detail") {
                coordinator.push(.detail(id: "example"))
            }
        }
        .navigationTitle("BankApp")
    }
}

#Preview {
    NavigationStack { HomeView(coordinator: AppCoordinator()) }
}
