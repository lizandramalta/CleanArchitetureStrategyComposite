//
//  Produto.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 10/11/25.
//

import Foundation

class Produto: Identifiable, Codable, Element{
    var id: UUID
    var name: String
    var type: String
    
    init(id: UUID, name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
    
    func execute() {
        print("Está executando o produto: \(self.name)")
    }
}
