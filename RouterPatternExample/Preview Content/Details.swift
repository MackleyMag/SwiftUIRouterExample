//
//  Details.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 07/02/25.
//

extension ListItem {
    static var mock = ListItem(title: "Item 1", image: "heart", description: "Description 1")
    static var mockData: [ListItem] = [
        .init(title: "Item 1", image: "heart", description: "Description 1")
    ]
}

extension DetailsRouter {
    static var mock: DetailsRouter = DetailsRouter(pathNavigation: Router(), item: .mock)
}

extension DetailsViewModel {
    static var mockVM: DetailsViewModel = .init(router: DetailsRouter.mock, item: .mock)
}
