//
//  FetchAllProductsAndCategoriesImpl.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

final class FetchAllProductsAndCategoriesImpl: FetchAllProductsAndCategories {
    private let repository: CategoryRepository
    
    init(repository: CategoryRepository) {
        self.repository = repository
    }
    
	func execute() throws -> [any GenericElement] {
        return try repository.loadAll()
	}
	
}
