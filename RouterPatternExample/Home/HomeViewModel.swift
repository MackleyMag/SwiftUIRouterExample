//
//  HomeViewModel.swift
//  RouterPatternExample
//
//  Created by Mackley Magalhães on 06/02/25.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    private var router: HomeRouter
    
    @Published var listData: [ListItem] = [
        ListItem(title: "Casa Bonita", image: "house", description: "Uma casa acolhedora e bonita."),
        ListItem(title: "Estrela Brilhante", image: "star", description: "Uma estrela que brilha no céu."),
        ListItem(title: "Coração Feliz", image: "heart", description: "Um símbolo de amor e felicidade."),
        ListItem(title: "Relógio Moderno", image: "clock", description: "Um relógio elegante para o dia a dia."),
        ListItem(title: "Carro Esportivo", image: "car.fill", description: "Um carro rápido e estiloso."),
        ListItem(title: "Computador", image: "desktopcomputer", description: "Uma máquina potente para trabalho e diversão."),
        ListItem(title: "Livro Antigo", image: "book", description: "Um tesouro de conhecimentos antigos."),
        ListItem(title: "Telefone Antigo", image: "phone.fill", description: "Uma lembrança dos tempos passados."),
        ListItem(title: "Globo Terrestre", image: "globe", description: "Um símbolo da nossa Terra e suas diversidades."),
        ListItem(title: "Documento", image: "doc.fill", description: "Um arquivo importante que contém informações.")
    ]
    
    init(router: HomeRouter) {
        self.router = router
    }
    
    func goTodetails(item: ListItem) {
        router.goToDetail(item)
    }
}

struct ListItem: Identifiable, Hashable {
    var id = UUID() // Gerar um ID exclusivo
    var title: String
    var image: String
    var description: String
}
