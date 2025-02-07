//
//  DetailsView.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 07/02/25.
//

import SwiftUI

struct DetailsView: View {
    @StateObject var viewModel: DetailsViewModel
    var body: some View {
        VStack  {
            Image(systemName: viewModel.item.image)
                .font(.title)
                .foregroundColor(.red)
            Text(viewModel.item.title)
                .font(.largeTitle)
            Text(viewModel.item.description)
                .font(.title2)
            
        }
        .navigationTitle("Tela de detalhes")
//        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(.blue, for: .navigationBar)
    }
}

#Preview {
    DetailsView(viewModel: .mockVM)
}
