//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol GenericElement: AnyObject {
    func addElement(_ element: GenericElement) -> Void
	func findProduct(by id: UUID) -> Product?
	func findParentCategory(of id: UUID, parent: Category?) -> Category?
}
