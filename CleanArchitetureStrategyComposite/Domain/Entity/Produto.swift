//
//  Produto.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Paulo Henrique Costa Alves on 10/11/25.
//

import Foundation

struct Product: Decodable, Element{
    var id = UUID()
    var name: String
    var type: String
    
    func execute() {
        print("Está executando o produto: \(self.name)")
    }
    
    func executeSearch(name: String) -> Element? {
        return self
    }
}
