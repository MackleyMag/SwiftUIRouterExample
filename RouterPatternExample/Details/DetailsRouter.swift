//
//  DetailsRouter.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 07/02/25.
//

import SwiftUI

final class DetailsRouter: Routable {
    var pathNavigation: NavigationRoutable
    var item: ListItem
    
    init(pathNavigation: NavigationRoutable, item: ListItem) {
        self.pathNavigation = pathNavigation
        self.item = item
    }
    
    func makeView() -> AnyView {
        let viewModel = DetailsViewModel(router: self, item: self.item)
        let view = DetailsView(viewModel: viewModel)
        return AnyView(view.toolbar(.hidden, for: .tabBar))
    }
}
