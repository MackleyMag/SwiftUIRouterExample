//
//  HomeExtensions.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 19/02/25.
//

extension HomeRouter {
    static var mockRouter = HomeRouter(pathNavigation: Router())
}

extension HomeViewModel {
    static var mockVM = HomeViewModel(router: .mockRouter)
}
