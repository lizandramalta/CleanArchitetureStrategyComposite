//
//  Product.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

final class Product: GenericElement {
	
    var id: UUID
    var name: String
    var price: Double
    var elements: [any GenericElement]
    
    init(id: UUID = .init(), name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
        self.elements = []
    }
    
    func addElement(_ element: any GenericElement) {
        elements.append(element)
    }
	
	func findProduct(by id: UUID) -> Product? {
		return self.id == id ? self : nil
	}
	
	func findCategoryPath(to id: UUID, currentPath: [Category]) -> [Category]? {
		return self.id == id ? currentPath : []
	}
	
}
