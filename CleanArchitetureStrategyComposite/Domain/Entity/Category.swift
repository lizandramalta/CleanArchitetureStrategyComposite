//
//  Category.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

final class Category: GenericElement, Identifiable {
	
    var id: UUID
    var name: String
    var elements: [any GenericElement]
    
    init(id: UUID = .init(), name: String, elements: [any GenericElement]) {
        self.id = id
        self.name = name
        self.elements = elements
    }
    
    func addElement(_ element: any GenericElement) {
        elements.append(element)
    }
	
	func findProduct(by id: UUID) -> Product? {
		for element in elements {
			if let found = element.findProduct(by: id) {
				return found
			}
		}
		return nil
	}
	
	func findCategoryPath(to productId: UUID, currentPath: [Category]) -> [Category]? {
		let newPath = currentPath + [self]
		
		for element in elements {
			if let result = element.findCategoryPath(to: productId, currentPath: newPath) {
				return result
			}
		}
		return nil
	}
}
