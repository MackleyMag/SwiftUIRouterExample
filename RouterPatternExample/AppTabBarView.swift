//
//  AppTabBarView.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

enum Tab: LocalizedStringResource, CaseIterable {
    case home = "Home"
    case secondMenu = "Segunda tela"
    
    var symbolImage: String {
        switch self {
            case .home:
                return "house"
            case .secondMenu:
                return "heart"
        }
    }
}

struct AppTabBarView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        TabView(selection: $router.activeTab) {
            HomeStack()
                .tag(Tab.home)
                .tabItem {
                    Image(systemName: Tab.home.symbolImage)
                    Text(Tab.home.rawValue)
                }
            SecondStack()
                .tag(Tab.secondMenu)
                .tabItem {
                    Text(Tab.secondMenu.rawValue)
                    Image(systemName: Tab.secondMenu.symbolImage)
                }
            
        }
    }
    
    @ViewBuilder
    func HomeStack() -> some View {
        NavigationStack(path: $router.paths) {
            router.resolveInitialRouter().makeView()
                .navigationDestination(for: AnyRoutable.self) { router in
                    router.makeView()
                }
        }
        .accentColor(Color.white)
    }
    
    @ViewBuilder
    func SecondStack() -> some View {
        NavigationStack(path: $router.paths) {
            router.resolveInitialRouter().makeView()
                .navigationDestination(for: AnyRoutable.self) { router in
                    router.makeView()
                }
        }
        .accentColor(Color.red)
    }
}

#Preview {
    AppTabBarView()
        .environmentObject(Router())
}
