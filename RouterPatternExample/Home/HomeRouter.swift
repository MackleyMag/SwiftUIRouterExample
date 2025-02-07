//
//  HomeRouter.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

final class HomeRouter: Routable {
    var pathNavigation: any NavigationRoutable
    
    init(pathNavigation: NavigationRoutable) {
        self.pathNavigation = pathNavigation
    }
    
    func makeView() -> AnyView {
        let viewModel = HomeViewModel(router: self)
        let view = HomeView(viewModel: viewModel)
        return AnyView(view)
    }
    
    
}

extension HomeRouter {
    func goToDetail(_ item: ListItem) {
        let nextRouter = DetailsRouter(pathNavigation: self.pathNavigation, item: item)
        pathNavigation.push(nextRouter)
    }
}
