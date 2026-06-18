//
//  Typography.swift
//  BankApp
//
//  Created by AOZ on 18/06/2026.
//
import SwiftUI

/// App typography styles.
/// Built on system text styles → automatic Dynamic Type support.
/// Usage: `Text("Balance").font(.bankTitle)`
extension Font {
    /// Screen title
    static let bankTitle = Font.system(.title, design: .rounded).weight(.bold)
    /// Section header
    static let bankHeadline = Font.system(.headline, design: .rounded)
    /// Body text
    static let bankBody = Font.system(.body)
    /// Secondary text
    static let bankCaption = Font.system(.caption)
    /// Amounts — monospaced digits for perfect alignment
    static let bankAmount = Font.system(.title2, design: .rounded)
        .weight(.semibold)
        .monospacedDigit()
}
