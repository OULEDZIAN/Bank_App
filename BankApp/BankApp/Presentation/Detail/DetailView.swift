//
//  DetailView.swift
//  BankApp
//
//  Created by AOZ on 19/06/2026.
//
import SwiftUI

/// Placeholder detail screen, reached via `Route.detail`.
/// Mirrors `HomeView` as a navigation example; will be replaced by a real
/// feature screen (backed by a ViewModel) later.
struct DetailView: View {
    let id: String

    var body: some View {
        ContentUnavailableView(
            "Detail",
            systemImage: "doc.text",
            description: Text("Detail placeholder for id: \(id)")
        )
        .navigationTitle("Detail")
    }
}

#Preview {
    NavigationStack { DetailView(id: "example") }
}
