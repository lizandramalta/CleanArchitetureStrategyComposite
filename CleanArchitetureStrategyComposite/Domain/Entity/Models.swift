//
//  Models.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Cauê Carneiro on 12/11/25.
//

import Foundation

struct Produto: Identifiable, Element {
    let id: UUID
    let name: String
    let price: Double
    
    func execute() {
        print("sou um produto e meu nome é \(name)")
    }
}

struct Categoria: Identifiable, Element {
    let id: UUID
    let name: String
    var elements: [Element]
    var subcategorias: [Categoria]
    var produtos: [Produto]
    
    func execute() {
        print("Adentrando a categoria \(name)")
        for element in elements {
            element.execute()
        }
    }
}

func brl(_ value: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "pt_BR")
    return formatter.string(from: NSNumber(value: value)) ?? "R$ 0,00"
}
