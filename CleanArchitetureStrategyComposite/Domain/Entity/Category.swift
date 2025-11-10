//
//  Category.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

final class Category: Element {
    var id: UUID
    var name: String
    var type: String
    var children: [any Element]
    
    init(id: UUID = .init(), name: String, type: String, children: [any Element]) {
        self.id = id
        self.name = name
        self.type = type
        self.children = children
    }
}
