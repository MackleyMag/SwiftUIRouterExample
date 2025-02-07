//
//  RootScreen.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

struct RootScreen: View {
    @StateObject var pathRouter = Router()
    
    var body: some View {
        AppTabBarView()
            .environmentObject(pathRouter)
    }
}

#Preview {
    RootScreen()
}
