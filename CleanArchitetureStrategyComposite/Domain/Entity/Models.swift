//
//  Models.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Cauê Carneiro on 12/11/25.
//

import Foundation

struct Produto: Identifiable {
    let id: UUID
    let name: String
    let price: Double
}

struct Categoria: Identifiable {
    let id: UUID
    let name: String
    var subcategorias: [Categoria]
    var produtos: [Produto]
}

func brl(_ value: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "pt_BR")
    return formatter.string(from: NSNumber(value: value)) ?? "R$ 0,00"
}
