//
//  Product.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

final class Product: Element {
    var id: UUID
    var name: String
    var price: Double
    var children: [any Element]
    
    init(id: UUID = .init(), name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
        self.children = []
    }
}
