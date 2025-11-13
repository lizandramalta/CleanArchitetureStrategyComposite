//
//  Element.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Lizandra Malta on 10/11/25.
//

import Foundation

protocol GenericElement: AnyObject,Identifiable {
    var id: UUID { get }
    var name: String { get }
    
    func addElement(_ element: any GenericElement) -> Void
	func findProduct(by id: UUID) -> Product?
	func findParentCategory(of id: UUID, parent: Category?) -> Category?
}
