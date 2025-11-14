//
//  GetCategoryByProductId.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

import Foundation

class GetProductPath {
	
	private let repository: ProductRepository
	
	init(repository: ProductRepository) {
		self.repository = repository
	}
	
	func execute(_ id: UUID) throws -> [Category] {
		return try repository.getProductPath(id)
	}
}
