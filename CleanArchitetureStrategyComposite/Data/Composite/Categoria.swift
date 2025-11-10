//
//  Categoria.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 10/11/25.
//

import Foundation

class Categoria: Identifiable, Element {
    var id: UUID
    var name: String
    var type: String
    var children: [any Element] = []
    
    init(id: UUID, name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
    
    func execute() {
        for product in self.children {
            product.execute()
        }
    }
}
