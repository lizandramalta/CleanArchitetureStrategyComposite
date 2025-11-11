//
//  Product.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

class Product: Element {
    var id: UUID
    var name: String
    var type: String
    var price: Double
    
    init(id: UUID = .init(), name: String, type: String, price: Double) {
        self.id = id
        self.name = name
        self.type = type
        self.price = price
        self.children = []
    }
    
    internal func execute() {}
}
