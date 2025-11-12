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
    var elements: [any Element]
    
    init(id: UUID = .init(), name: String, elements: [any Element]) {
        self.id = id
        self.name = name
        self.elements = elements
    }
    
    func addElement(_ element: any Element) {
        elements.append(element)
    }
}
