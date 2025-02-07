//
//  DetailsViewModel.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 07/02/25.
//

import SwiftUI

final class DetailsViewModel: ObservableObject {
    private var router: DetailsRouter
    
    var item: ListItem
    
    init(router: DetailsRouter, item: ListItem) {
        self.router = router
        self.item = item
    }
    
    
}
