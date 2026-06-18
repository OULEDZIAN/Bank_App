//
//  Spacing.swift
//  BankApp
//
//  Created by AOZ on 18/06/2026.
//
import Foundation

/// App spacing scale, based on a 4-point grid.
/// Usage: `.padding(Spacing.md)`, `VStack(spacing: Spacing.sm)`
enum Spacing {
    /// 4pt
    static let xs: CGFloat = 4
    /// 8pt
    static let sm: CGFloat = 8
    /// 16pt
    static let md: CGFloat = 16
    /// 24pt
    static let lg: CGFloat = 24
    /// 32pt
    static let xl: CGFloat = 32
    /// 48pt
    static let xxl: CGFloat = 48
}
