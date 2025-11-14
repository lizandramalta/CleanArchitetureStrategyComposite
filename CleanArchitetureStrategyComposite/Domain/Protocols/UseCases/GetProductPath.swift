//
//  GetCategoryByProductId.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

import Foundation

<<<<<<< HEAD:CleanArchitetureStrategyComposite/Domain/Protocols/UseCases/GetCategoryByProductId.swift
class GetCategoryByProductId {
	
    private let repository: ProductRepository
    
    init(repository: ProductRepository) {
        self.repository = repository
    }
    
	func execute(_ id: UUID) throws -> Category {
		return try repository.getCategoryByProductId(id)
	}
=======
protocol GetProductPath {
	func execute(_ id: UUID) throws -> [Category]
>>>>>>> productPath:CleanArchitetureStrategyComposite/Domain/Protocols/UseCases/GetProductPath.swift
}
