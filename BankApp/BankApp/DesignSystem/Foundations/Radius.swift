//
//  Radius.swift
//  BankApp
//
//  Created by AOZ on 18/06/2026.
//
import Foundation

/// Standardized corner radii.
/// Usage: `.clipShape(.rect(cornerRadius: Radius.card))`
enum Radius {
    /// 8pt — buttons, small elements
    static let button: CGFloat = 8
    /// 12pt — cards, containers
    static let card: CGFloat = 12
    /// 20pt — sheets, modals
    static let sheet: CGFloat = 20
}
