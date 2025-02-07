//
//  AnyRoutable.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

struct AnyRoutable: Routable {
    var pathNavigation: any NavigationRoutable
    
    private let base: any Routable
    private let equals: (any Routable) -> Bool
    
    init<T: Routable>(_ routable: T) {
        pathNavigation = routable.pathNavigation
        base = routable
        equals = { other in
            guard let otherBase = other as? T else { return false }
            return routable == otherBase
        }
    }
    
    func makeView() -> AnyView {
        self.base.makeView()
    }
    
    func hash(into hasher: inout Hasher) {
        self.base.hash(into: &hasher)
    }
    
    static func == (lhs: AnyRoutable, rhs: AnyRoutable) -> Bool {
        lhs.equals(rhs.base)
    }
}
