//
//  RouterProtocolsDefinition.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

protocol Routable: ViewFactory & Hashable {
    var pathNavigation: NavigationRoutable { get set }
}

protocol ViewFactory {
    func makeView() -> AnyView
}

protocol NavigationRoutable {
    func push(_ path: any Routable)
    func popLast()
    func popToRoot()
}

extension Routable where Self: AnyObject {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs === rhs
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}

