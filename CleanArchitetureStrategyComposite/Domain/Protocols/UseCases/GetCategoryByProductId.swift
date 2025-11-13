//
//  GetCategoryByProduct.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

import Foundation

protocol GetCategoryByProductId {
	func execute(_ id: UUID) throws -> Category
}
