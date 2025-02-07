//
//  Router.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var paths = NavigationPath()
    @Published var activeTab: Tab = .home
    
    init(paths: NavigationPath = NavigationPath()) {
        self.paths = paths
    }
    
    func resolveInitialRouter() -> any Routable {
        switch activeTab {
            case .secondMenu:
                let homePageRouter = HomeRouter(pathNavigation: self)
                return homePageRouter
            default:
                let homePageRouter = HomeRouter(pathNavigation: self)
                return homePageRouter
        }
    }
}

extension Router: NavigationRoutable {
    func push(_ router: any Routable) {
        DispatchQueue.main.async {
            let wrappedRouter = AnyRoutable(router)
            self.paths.append(wrappedRouter)
        }
    }
    
    func popLast() {
        DispatchQueue.main.async {
            withAnimation(.easeOut) {
                self.paths.removeLast()
            }
        }
    }
    
    func popToRoot() {
        DispatchQueue.main.async {
            withAnimation(.easeOut) {
                self.paths.removeLast(self.paths.count)
            }
        }
    }
}
