//
//  HomeView.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        List {
            ForEach(viewModel.listData, id: \.self) { item in
                HStack {
                    Image(systemName: item.image)
                    Text(item.title)
                }
                .contentShape(Rectangle())
                .onTapGesture { _ in
                    viewModel.goTodetails(item: item)
                }
            }
        }
        .navigationTitle("Home Page")
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel(router: .init(pathNavigation: Router())))
}
