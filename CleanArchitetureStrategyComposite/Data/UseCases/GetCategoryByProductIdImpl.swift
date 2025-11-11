//
//  GetCategoryByProductId.swift
//  CleanArchitetureStrategyComposite
//
//  Created by Ana Clara Ferreira Caldeira on 10/11/25.
//

import Foundation

class GetCategoryByProductNameImpl: GetCategoryByProductName {
    private let repository: ProductRepository
    
    init(repository: ProductRepository) {
        self.repository = repository
    }
    
	func execute(_ name: String) -> Category {
        return repository.getCategoryByProductName(name)
	}

}
