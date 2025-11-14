//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol GenericElement: Identifiable {
	var id: UUID { get }
	
    func addElement(_ element: any GenericElement) -> Void
	func findProduct(by id: UUID) -> Product?
	func findCategoryPath(to id: UUID, currentPath: [Category]) -> [Category]?
}
