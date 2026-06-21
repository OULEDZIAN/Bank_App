//
//  AppCoordinatorTests.swift
//  BankApp
//
//  Created by AOZ on 19/06/2026.
//

import Testing
@testable import BankApp

@MainActor
@Suite("App coordinator navigation", .tags(.navigation))
struct AppCoordinatorTests {

    @Test("Starts with an empty navigation path")
    func startsEmpty() {
        let coordinator = AppCoordinator()
        #expect(coordinator.path.isEmpty)
    }

    @Test("push appends the route to the path")
    func pushAppends() {
        let coordinator = AppCoordinator()
        coordinator.push(.detail(id: "1"))
        #expect(coordinator.path == [.detail(id: "1")])
    }

    @Test("pop removes the last route")
    func popRemovesLast() {
        let coordinator = AppCoordinator()
        coordinator.push(.detail(id: "1"))
        coordinator.push(.detail(id: "2"))
        coordinator.pop()
        #expect(coordinator.path == [.detail(id: "1")])
    }

    @Test("popToRoot clears the path")
    func popToRootClears() {
        let coordinator = AppCoordinator()
        coordinator.push(.detail(id: "1"))
        coordinator.push(.detail(id: "2"))
        coordinator.popToRoot()
        #expect(coordinator.path.isEmpty)
    }

    @Test("push appends each provided route", arguments: [
        Route.detail(id: "1"),
        Route.detail(id: "2")
    ])
    func pushAppendsEach(route: Route) {
        let coordinator = AppCoordinator()
        coordinator.push(route)
        #expect(coordinator.path == [route])
    }
}
